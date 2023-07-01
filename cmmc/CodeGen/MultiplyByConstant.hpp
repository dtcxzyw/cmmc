#include <memory>
#include <utility>

struct ShiftArithNode {
    enum class ArtihType {
        ADD,
        SUB,
        NOP,
    };
    enum class RhsType {
        CHAIN,
        ORIGIN,
    };

    int32_t cost;
    int32_t shamt;
    ArtihType artihmetic;
    RhsType rhs;
    std::shared_ptr<ShiftArithNode> parent;

    ShiftArithNode(int32_t shamtVal, ArtihType artihmeticVal, RhsType rhsVal, std::shared_ptr<ShiftArithNode> parentVal)
        : shamt(shamtVal), artihmetic(artihmeticVal), rhs(rhsVal), parent(std::move(parentVal)) {
        cost = (parent ? parent->cost : 0) + (artihmetic != ArtihType::NOP) + (shamt > 0);
    }

    bool operator<(const ShiftArithNode& other) const {
        return cost < other.cost;
    }
};

std::shared_ptr<ShiftArithNode> findMultiplyPlan(intmax_t n, int upper);
