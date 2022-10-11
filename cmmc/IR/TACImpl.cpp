#include <cmmc/IR/TACImpl.hpp>

/*****************************************************************
    ####################### STOP HERE #########################
     The code below is related to the intermediate code
     generation, they are not helpful to you in project 4.
    ####################### STOP HERE #########################
 *****************************************************************/

char* _str_trim(char* str) {
    // from: https://stackoverflow.com/questions/122616/
    char* end;

    // Trim leading space
    while(isspace((unsigned char)*str))
        str++;

    if(*str == 0)  // All spaces?
        return str;

    // Trim trailing space
    end = str + strlen(str) - 1;
    while(end > str && isspace((unsigned char)*end))
        end--;

    // Write new null terminator character
    end[1] = '\0';
    return str;
}

char** _str_split(char* str, const char delim, int* n) {
    // from: https://stackoverflow.com/questions/9210528/
    if(*str == '\0' || str == NULL || delim == '\0') {
        // Either of those will cause problems
        *n = -1;
        return NULL;
    }

    char** result = 0;
    size_t count = 0;
    char* tmp = str;
    char* last_comma = 0;
    char delims[2];
    delims[0] = delim;
    delims[1] = 0;

    /* Count how many elements will be extracted. */
    while(*tmp) {
        if(delim == *tmp) {
            count++;
            last_comma = tmp;
        }
        tmp++;
    }
    /* Add space for trailing token. */
    count += last_comma < (str + strlen(str) - 1);
    *n = count;

    result = reinterpret_cast<char**>(malloc(sizeof(char*) * (count + 1)));
    if(result) {
        size_t idx = 0;
        char* token = strtok(str, delims);

        while(token) {
            assert(idx < count);
            *(result + idx++) = strdup(token);
            token = strtok(0, delims);
        }
        assert(idx == count);
        *(result + idx) = 0;
    }
    return result;
}

tac_opd* _tac_opd_from_str(char* tk) {
    int i;

    if(tk[0] == '#') {
        i = atoi(tk + 1);
        return tac_opd_constant(i);
    } else if(tk[0] == '&') {
        return tac_opd_pointer(tk + 1);
    } else if(memcmp(tk, "label", 5) == 0) {
        i = atoi(tk + 5);
        return tac_opd_label(i);
    } else {
        return tac_opd_variable(tk);
    }
}

tac* _tac_from_line(char* ln) {
    tac_opd *t1, *t2, *t3;
    tac* code;
    char** tokens;
    int i, count;

    ln = _str_trim(ln);
    tokens = _str_split(ln, ' ', &count);

    if(tokens == NULL) {
        return tac_init_none();
    }

    if(count == 2) {
        code = tac_init_none();
        t1 = _tac_opd_from_str(tokens[1]);
        if(strcmp(tokens[0], "GOTO") == 0)
            code = tac_init_goto(t1);
        else if(strcmp(tokens[0], "RETURN") == 0)
            code = tac_init_return(t1);
        else if(strcmp(tokens[0], "ARG") == 0)
            code = tac_init_arg(t1);
        else if(strcmp(tokens[0], "PARAM") == 0)
            code = tac_init_param(t1);
        else if(strcmp(tokens[0], "READ") == 0)
            code = tac_init_read(t1);
        else if(strcmp(tokens[0], "WRITE") == 0)
            code = tac_init_write(t1);
        else
            assert(0);
    } else if(count == 3) {
        if(strcmp(tokens[0], "LABEL") == 0) {
            t1 = _tac_opd_from_str(tokens[1]);
            code = tac_init_label(t1);
        } else if(strcmp(tokens[0], "FUNCTION") == 0) {
            code = tac_init_function(tokens[1]);
        } else if(strcmp(tokens[0], "DEC") == 0) {
            t1 = tac_opd_pointer(tokens[1]);
            i = atoi(tokens[2]);
            code = tac_init_dec(t1, i);
        } else {
            if(tokens[0][0] == '*') {
                t1 = _tac_opd_from_str(tokens[0] + 1);
                t2 = _tac_opd_from_str(tokens[2]);
                code = tac_init_deref(t1, t2);
            } else if(tokens[2][0] == '*') {
                t1 = _tac_opd_from_str(tokens[0]);
                t2 = _tac_opd_from_str(tokens[2] + 1);
                code = tac_init_fetch(t1, t2);
            } else if(tokens[2][0] == '&') {
                t1 = _tac_opd_from_str(tokens[0]);
                t2 = _tac_opd_from_str(tokens[2]);
                code = tac_init_addr(t1, t2);
            } else {
                t1 = _tac_opd_from_str(tokens[0]);
                t2 = _tac_opd_from_str(tokens[2]);
                code = tac_init_assign(t1, t2);
            }
        }
    } else if(count == 4) {
        t1 = _tac_opd_from_str(tokens[0]);
        code = tac_init_call(t1, tokens[3]);
    } else if(count == 5) {
        t1 = _tac_opd_from_str(tokens[0]);
        t2 = _tac_opd_from_str(tokens[2]);
        t3 = _tac_opd_from_str(tokens[4]);
        switch(tokens[3][0]) {
            case '+':
                code = tac_init_add(t1, t2, t3);
                break;
            case '-':
                code = tac_init_sub(t1, t2, t3);
                break;
            case '*':
                code = tac_init_mul(t1, t2, t3);
                break;
            case '/':
                code = tac_init_div(t1, t2, t3);
                break;
        }
    } else {  // count == 6
        t1 = _tac_opd_from_str(tokens[1]);
        t2 = _tac_opd_from_str(tokens[3]);
        t3 = _tac_opd_from_str(tokens[5]);
        if(strlen(tokens[2]) == 1) {
            if(tokens[2][0] == '<')
                code = tac_init_iflt(t1, t2, t3);
            else  // >
                code = tac_init_ifgt(t1, t2, t3);
        } else {  // == 2
            if(tokens[2][0] == '<')
                code = tac_init_ifle(t1, t2, t3);
            else if(tokens[2][0] == '>')
                code = tac_init_ifge(t1, t2, t3);
            else if(tokens[2][0] == '!')
                code = tac_init_ifne(t1, t2, t3);
            else  // ==
                code = tac_init_ifeq(t1, t2, t3);
        }
    }

    free(tokens);
    return code;
}

tac* tac_from_buffer(char* buf) {
    tac *self, *inst;
    char lnbuf[64];
    int buf_i, i;

    self = tac_init_none();
    for(buf_i = i = 0; buf[buf_i] != '\x7f'; buf_i++) {
        if(buf[buf_i] != '\n') {
            lnbuf[i++] = buf[buf_i];
        } else {
            lnbuf[i] = '\0';
            inst = _tac_from_line(lnbuf);
            tac_append(self, inst);
            i = 0;
        }
    }
    return self;
}

void tac_opd_print(tac_opd* self, FILE* fd) {
    switch(self->kind) {
        case OP_LABEL:
            fprintf(fd, "label%d", self->int_val);
            break;
        case OP_VARIABLE:
            fprintf(fd, "%s", self->char_val);
            break;
        case OP_CONSTANT:
            fprintf(fd, "#%d", self->int_val);
            break;
        case OP_POINTER:
            fprintf(fd, "&%s", self->char_val);
            break;
    }
}

tac_opd* tac_opd_label(int lval) {
    tac_opd* self = (tac_opd*)malloc(sizeof(tac_opd));
    self->kind = OP_LABEL;
    self->int_val = lval;
    return self;
}

tac_opd* tac_opd_variable(char* vname) {
    tac_opd* self = (tac_opd*)malloc(sizeof(tac_opd));
    self->kind = OP_VARIABLE;
    sprintf(self->char_val, "%s", vname);
    return self;
}

tac_opd* tac_opd_constant(int cval) {
    tac_opd* self = (tac_opd*)malloc(sizeof(tac_opd));
    self->kind = OP_CONSTANT;
    self->int_val = cval;
    return self;
}

tac_opd* tac_opd_pointer(char* pname) {
    tac_opd* self = (tac_opd*)malloc(sizeof(tac_opd));
    self->kind = OP_POINTER;
    sprintf(self->char_val, "%s", pname);
    return self;
}

void tac_insert(tac* head, tac* seg) {
    tac *p, *q;
    q = head->next;
    head->next = seg;
    seg->prev = head;
    p = seg;
    while(p->next != NULL)
        p = p->next;
    p->next = q;
    if(q != NULL)
        q->prev = p;
}

void tac_append(tac* head, tac* seg) {
    tac* p;
    p = head;
    while(p->next != NULL)
        p = p->next;
    tac_insert(p, seg);
}

tac* tac_init_label(tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = LABEL;
    self->code.label.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_function(char* funcname) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = FUNCTION;
    self->code.function.funcname = (char*)malloc(32);
    sprintf(self->code.function.funcname, "%s", funcname);
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_assign(tac_opd* left, tac_opd* right) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = ASSIGN;
    self->code.assign.left = left;
    self->code.assign.right = right;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_add(tac_opd* left, tac_opd* r1, tac_opd* r2) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = ADD;
    self->code.add.left = left;
    self->code.add.r1 = r1;
    self->code.add.r2 = r2;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_sub(tac_opd* left, tac_opd* r1, tac_opd* r2) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = SUB;
    self->code.sub.left = left;
    self->code.sub.r1 = r1;
    self->code.sub.r2 = r2;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_mul(tac_opd* left, tac_opd* r1, tac_opd* r2) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = MUL;
    self->code.mul.left = left;
    self->code.mul.r1 = r1;
    self->code.mul.r2 = r2;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_div(tac_opd* left, tac_opd* r1, tac_opd* r2) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = DIV;
    self->code.div.left = left;
    self->code.div.r1 = r1;
    self->code.div.r2 = r2;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_addr(tac_opd* left, tac_opd* right) {
    assert(right->kind == OP_POINTER);
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = ADDR;
    self->code.addr.left = left;
    self->code.addr.right = right;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_fetch(tac_opd* left, tac_opd* raddr) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = FETCH;
    self->code.fetch.left = left;
    self->code.fetch.raddr = raddr;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_deref(tac_opd* laddr, tac_opd* right) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = DEREF;
    self->code.deref.laddr = laddr;
    self->code.deref.right = right;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_goto(tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = GOTO;
    self->code.goto_.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_iflt(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFLT;
    self->code.iflt.c1 = c1;
    self->code.iflt.c2 = c2;
    self->code.iflt.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_ifle(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFLE;
    self->code.ifle.c1 = c1;
    self->code.ifle.c2 = c2;
    self->code.ifle.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_ifgt(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFGT;
    self->code.ifgt.c1 = c1;
    self->code.ifgt.c2 = c2;
    self->code.ifgt.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_ifge(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFGE;
    self->code.ifge.c1 = c1;
    self->code.ifge.c2 = c2;
    self->code.ifge.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_ifne(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFNE;
    self->code.ifne.c1 = c1;
    self->code.ifne.c2 = c2;
    self->code.ifne.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_ifeq(tac_opd* c1, tac_opd* c2, tac_opd* labelno) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = IFEQ;
    self->code.ifeq.c1 = c1;
    self->code.ifeq.c2 = c2;
    self->code.ifeq.labelno = labelno;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_return(tac_opd* var) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = RETURN;
    self->code.return_.var = var;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_dec(tac_opd* var, int size) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = DEC;
    self->code.dec.var = var;
    self->code.dec.size = size;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_arg(tac_opd* var) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = ARG;
    self->code.arg.var = var;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_call(tac_opd* ret, char* funcname) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = CALL;
    self->code.call.ret = ret;
    self->code.call.funcname = (char*)malloc(32);
    sprintf(self->code.call.funcname, "%s", funcname);
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_param(tac_opd* p) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = PARAM;
    self->code.param.p = p;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_read(tac_opd* p) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = READ;
    self->code.read.p = p;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_write(tac_opd* p) {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = WRITE;
    self->code.write.p = p;
    self->prev = self->next = NULL;
    return self;
}

tac* tac_init_none() {
    tac* self = (tac*)malloc(sizeof(tac));
    self->code.kind = NONE;
    self->prev = self->next = NULL;
    return self;
}
