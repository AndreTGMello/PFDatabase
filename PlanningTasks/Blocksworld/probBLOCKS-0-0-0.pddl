(define (problem BLOCKS-0-0)
(:domain BLOCKS)
(:requirements :strips :typing)
(:objects A B - block)
(:INIT (CLEAR A) (CLEAR B) (ONTABLE A) (ONTABLE B)
 (HANDEMPTY))
(:goal (AND (ON B A)))
)
