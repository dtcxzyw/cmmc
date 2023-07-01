#include <memory>

class ShiftArithNode {
public:
    enum class ArtihType {
        ADD,
        SUB,
        NOP,
    };
    enum class RhsType {
        CHAIN,
        ORIGIN,
    };

    int cost;
    int shamt;
    ArtihType artihmetic;
    RhsType rhs;
    std::shared_ptr<ShiftArithNode> parent;

    ShiftArithNode(int shamt_, ArtihType artihmetic_, RhsType rhs_, std::shared_ptr<ShiftArithNode> parent_)
        : shamt(shamt_), artihmetic(artihmetic_), rhs(rhs_), parent(parent_) {
        cost = (parent ? parent->cost : 0) + (artihmetic != ArtihType::NOP) + (shamt > 0);
    }

    bool operator<(const ShiftArithNode& other) const {
        return cost < other.cost;
    }
};

std::shared_ptr<ShiftArithNode> findMultiplyPlan(intmax_t n, int upper);
