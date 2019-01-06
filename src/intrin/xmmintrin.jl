
const __m128 = LVec{4, Float32}
@inline _mm_add_ps(a::__m128, b::__m128) = LLVM.fadd(a, b)
@inline function _mm_add_ss(a::__m128, b::__m128)
    v = LLVM.extractelement(a, 0) + LLVM.extractelement(b, 0)
    return LLVM.insertelement(a, v, 0)
end
