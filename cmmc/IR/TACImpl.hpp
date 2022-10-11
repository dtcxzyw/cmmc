#pragma once

#include <assert.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct tac_opd tac_opd;
typedef struct tac_node tac;

enum TACOperandType { OP_LABEL, OP_VARIABLE, OP_CONSTANT, OP_POINTER };

struct tac_opd {
    TACOperandType kind;
    union {
        char char_val[8];  // stores variable name, pointer name
        int int_val;       // stores label number, int constant
    };
};

enum TACInstID {
    LABEL,
    FUNCTION,
    ASSIGN,
    ADD,
    SUB,
    MUL,
    DIV,
    ADDR,
    FETCH,
    DEREF,
    GOTO,
    IFLT,
    IFLE,
    IFGT,
    IFGE,
    IFNE,
    IFEQ,
    RETURN,
    DEC,
    ARG,
    CALL,
    PARAM,
    READ,
    WRITE,
    NONE
};

struct _tac_inst {
    TACInstID kind;
    union {  // all union variables are not pointer!
        // LABEL label[labelno] :
        struct {
            tac_opd* labelno;
        } label;
        // FUNCTION funcname :
        struct {
            char* funcname;
        } function;
        // left := right
        struct {
            tac_opd *left, *right;
        } assign;
        // left := r1 + r2
        struct {
            tac_opd *left, *r1, *r2;
        } add;
        // left := r1 - r2
        struct {
            tac_opd *left, *r1, *r2;
        } sub;
        // left := r1 * r2
        struct {
            tac_opd *left, *r1, *r2;
        } mul;
        // left := r1 / r2
        struct {
            tac_opd *left, *r1, *r2;
        } div;
        // left := &right
        struct {
            tac_opd *left, *right;
        } addr;
        // left := *raddr
        struct {
            tac_opd *left, *raddr;
        } fetch;
        // *laddr := right
        struct {
            tac_opd *laddr, *right;
        } deref;
        // GOTO label[labelno]
        struct {
            tac_opd* labelno;
        } goto_;
        // IF c1 < c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } iflt;
        // IF c1 <= c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } ifle;
        // IF c1 > c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } ifgt;
        // IF c1 >= c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } ifge;
        // IF c1 != c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } ifne;
        // IF c1 == c2 GOTO label[labelno]
        struct {
            tac_opd *c1, *c2;
            tac_opd* labelno;
        } ifeq;
        // RETURN var
        struct {
            tac_opd* var;
        } return_;
        // DEC var size
        struct {
            tac_opd* var;
            int size;
        } dec;
        // ARG var
        struct {
            tac_opd* var;
        } arg;
        // ret := CALL funcname
        struct {
            tac_opd* ret;
            char* funcname;
        } call;
        // PARAM p
        struct {
            tac_opd* p;
        } param;
        // READ p
        struct {
            tac_opd* p;
        } read;
        // WRITE p
        struct {
            tac_opd* p;
        } write;
    };
};

struct tac_node {
    struct _tac_inst code;         // code is not a pointer!
    struct tac_node *prev, *next;  // doubly linked list impl
};

/*
 * construct a tac list from the input buffer
 * put a '\n' after each instruction (also the last one)
 * ## you should put a '\x7f' at the end of the buffer ##
 */
tac* tac_from_buffer(char* buf);

/*****************************************************************
    ####################### STOP HERE #########################
     The declaration below is related to the intermediate code
     generation, they are not helpful to you in project 4.
    ####################### STOP HERE #########################
 *****************************************************************/

void tac_opd_print(tac_opd*, FILE*);

/*
 * related to intermediate code generation
 * returns a single TAC operand
 */
tac_opd* tac_opd_label(int);
tac_opd* tac_opd_variable(char*);
tac_opd* tac_opd_constant(int);
tac_opd* tac_opd_pointer(char*);

// insert a segment of TAC next to head
void tac_insert(tac*, tac*);

// insert a segment of TAC at the end of list
void tac_append(tac*, tac*);

/*
 * related to intermediate code generation
 * returns a single TAC quadruple
 */
tac* tac_init_label(tac_opd*);
tac* tac_init_function(char*);
tac* tac_init_assign(tac_opd*, tac_opd*);
tac* tac_init_add(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_sub(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_mul(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_div(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_addr(tac_opd*, tac_opd*);
tac* tac_init_fetch(tac_opd*, tac_opd*);
tac* tac_init_deref(tac_opd*, tac_opd*);
tac* tac_init_goto(tac_opd*);
tac* tac_init_iflt(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_ifle(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_ifgt(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_ifge(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_ifne(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_ifeq(tac_opd*, tac_opd*, tac_opd*);
tac* tac_init_return(tac_opd*);
tac* tac_init_dec(tac_opd*, int);
tac* tac_init_arg(tac_opd*);
tac* tac_init_call(tac_opd*, char*);
tac* tac_init_param(tac_opd*);
tac* tac_init_read(tac_opd*);
tac* tac_init_write(tac_opd*);
tac* tac_init_none();
