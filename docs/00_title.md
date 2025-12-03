# Quantum-Guided Test Case Minimization for LLM-Based Code Generation

***Abstract***—Precisely controlling Large Language Models
(LLMs) to generate efficient and concise code is a central
challenge in software engineering. We introduce a framework
based on Test-Driven Development (TDD) that transforms code
specification into a combinatorial optimization task. The framework first prompts an LLM to generate a test suite, then
formulates the Test Case Minimization (TCM) problem as a
Quadratic Unconstrained Binary Optimization (QUBO) model.
This QUBO paradigm is compatible with both classical solvers
and emerging hardware such as quantum annealers. Experimentally, quantum annealing solves the core TCM task 16 times
faster than simulated annealing. This performance underpins our
end-to-end framework, which reduces total token consumption
by 36.5% and significantly improves code quality. This work
demonstrates a powerful synergy between generative AI and
combinatorial optimization in software engineering, highlighting
the critical importance of precise model formulation.

***Index Terms***—large language models, test case minimization,
quadratic unconstrained binary optimization