\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{xcolor}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}
\newunicodechar{∃}{\ensuremath{\mathnormal\exists}}
\newunicodechar{∄}{\ensuremath{\mathnormal\nexists}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{∨}{\ensuremath{\mathnormal\vee}}
\newunicodechar{∈}{\ensuremath{\mathnormal\in}}
\newunicodechar{∉}{\ensuremath{\mathnormal\notin}}
\newunicodechar{∋}{\ensuremath{\mathnormal\ni}}
\newunicodechar{≡}{\ensuremath{\mathnormal\equiv}}
\newunicodechar{≈}{\ensuremath{\mathnormal\approx}}
\newunicodechar{≟}{\ensuremath{\stackrel{?}{=}}}
\newunicodechar{⟨}{\ensuremath{\mathnormal\langle}}
\newunicodechar{⟩}{\ensuremath{\mathnormal\rangle}}
\newunicodechar{∎}{\ensuremath{\mathnormal\blacksquare}}
\newunicodechar{∶}{\ensuremath{\mathnormal\colon\!\!}}
\newunicodechar{⊹}{\ensuremath{\mathnormal\dag}}
\newunicodechar{▹}{\ensuremath{\mathnormal\triangleright}}
\newunicodechar{𝕗}{\ensuremath{\mathnormal{\mathbb{f}}}}
\newunicodechar{ℙ}{\ensuremath{\mathnormal{\mathbb{P}}}}
\newunicodechar{𝔽}{\ensuremath{\mathnormal{\mathbb{F}}}}
\newunicodechar{𝕊}{\ensuremath{\mathnormal{\mathbb{S}}}}
\newunicodechar{𝕄}{\ensuremath{\mathnormal{\mathbb{M}}}}
\newunicodechar{ℕ}{\ensuremath{\mathnormal{\mathbb{N}}}}
\newunicodechar{ℝ}{\ensuremath{\mathnormal{\mathbb{R}}}}
\newunicodechar{ℂ}{\ensuremath{\mathnormal{\mathbb{C}}}}
\newunicodechar{𝔹}{\ensuremath{\mathnormal{\mathbb{B}}}}
\newunicodechar{𝕍}{\ensuremath{\mathnormal{\mathbb{V}}}}
\newunicodechar{ν}{\ensuremath{\mathnormal{\nu}}}
\newunicodechar{μ}{\ensuremath{\mathnormal{\mu}}}
\newunicodechar{◆}{\ensuremath{\mathnormal\blackdiamond}}
\newunicodechar{∸}{\ensuremath{\mathnormal\dotdiv}}
\newunicodechar{ᵇ}{\ensuremath{\mathnormal{^\AgdaFontStyle{b}}}}
\newunicodechar{≥}{\ensuremath{\mathnormal{\geq}}}
\newunicodechar{ϕ}{\ensuremath{\mathnormal{\phi}}}
\newunicodechar{χ}{\ensuremath{\mathnormal{\chi}}}
\newunicodechar{∧}{\ensuremath{\mathnormal{\wedge}}}
\newunicodechar{∅}{\ensuremath{\mathnormal{\emptyset}}}
\newunicodechar{∣}{\ensuremath{\mathnormal{|}}}
\newunicodechar{⁇}{\ensuremath{\mathnormal{\mathrm{?\!?}}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{∀}{\ensuremath{\mathnormal{\forall}}}
\newunicodechar{ℓ}{\ensuremath{\mathnormal{\ell}}}
\newunicodechar{σ}{\ensuremath{\mathnormal{\sigma}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{₂}{\ensuremath{\mathnormal{_2}}}
\newunicodechar{ₘ}{\ensuremath{\mathnormal{_\mathsf{m}}}}
\newunicodechar{ₛ}{\ensuremath{\mathnormal{_\mathsf{s}}}}
\newunicodechar{⊤}{\ensuremath{\mathnormal{\top}}}
\newunicodechar{≤}{\ensuremath{\mathnormal{\leq}}}
\newunicodechar{⍉}{\ensuremath{\mathnormal{∘\hspace{-0.455em}\backslash}}}
\newunicodechar{⦃}{\ensuremath{\mathnormal{\lbrace\!\lbrace}}}
\newunicodechar{⦄}{\ensuremath{\mathnormal{\rbrace\!\rbrace}}}
\newunicodechar{ᵢ}{\ensuremath{\mathnormal{_i}}}
\newunicodechar{ₗ}{\ensuremath{\mathnormal{_l}}}
\newunicodechar{ₒ}{\ensuremath{\mathnormal{_o}}}
\newunicodechar{ₚ}{\ensuremath{\mathnormal{_p}}}
\newunicodechar{ₙ}{\ensuremath{\mathnormal{_n}}}
\newunicodechar{ᵥ}{\ensuremath{\mathnormal{_v}}}
\newunicodechar{′}{\ensuremath{\mathnormal{'}}}
\newunicodechar{⊎}{\ensuremath{\mathnormal{\uplus}}}
\newunicodechar{≗}{\ensuremath{\mathnormal{\circeq}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\IC\AgdaInductiveConstructor
\newcommand\OpF[1]{\AgdaOperator{\F{#1}}}

\title{le me'oi .Agda.\ ke co'e ja velcki be tu'a la'o zoi.\ RISC-V\ .zoi.}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\begin{abstract}
\noindent
ni'o bau la .lojban.\ joi la'oi .Agda.\ la .varik.\ cu ciksi tu'a la'o zoi.\ RISC-V\ .zoi.\sds  .i na mulno pe'a
\end{abstract}

\section{le vrici}

\begin{code}
{-# OPTIONS --safe #-}

module Arvis where
open import Level
  using (
    Level
  )
  renaming (
    suc to lsuc;
    zero to 0ₗ
  )
open import Data.Fin
  as 𝔽
  using (
  )
  renaming (
    Fin to 𝔽
  )
open import Data.Nat
  as ℕ
  using (
    _<?_;
    _<_;
    ℕ
  )
open import Data.Vec
  as 𝕍
  using (
    Vec
  )
open import Function
  using (
    typeOf;
    _on_;
    _∘_;
    _$_
  )
  renaming (
    _|>_ to _▹_
  )
open import Data.Unit
  using (
    tt;
    ⊤
  )
open import Data.Product
  using (
    _×_;
    _,_
  )
open import Data.Nat.DivMod
  using (
    _mod_
  )
open import Relation.Nullary
  using (
    Dec;
    yes;
    ¬_;
    no
  )
open import Data.Vec.Properties
  as 𝕍P
  using (
  )
open import Relation.Nullary.Decidable
  using (
    False
  )
open import Relation.Binary.PropositionalEquality
  as _≡_
  using (
    _≡_
  )
\end{code}

\section{le rucyca'a se ctaipe}

\begin{code}
record Rucyca'a (b r : ℕ) : Set where
  field
    reg : Vec (𝔽 $ ℕ.suc b) r

  x0 : 𝔽 $ ℕ.suc b
  x0 = 𝔽.zero
\end{code}

\section{le skami se ctaipe}

\begin{code}
record Skami {a} (b r m : ℕ) (A : Set a) : Set (lsuc a) where
  inductive
  field
    pc : 𝔽 $ ℕ.suc b
    rucyca'a : Rucyca'a b r
    mem : Vec (𝔽 b) m
    vrici : A
    Ecall : typeOf rucyca'a
          → typeOf mem
          → typeOf vrici
          → Skami b r m A
\end{code}

\section{le co'e ja midnoi se ctaipe}

\begin{code}
record Instruction {a} (A : Set a) (b r m : ℕ) : Set (lsuc a Level.⊔ lsuc 0ₗ) where
  field
    nibarda : ℕ
    Mapti : Set
    Mapti? : Dec Mapti
    f : Mapti → Skami b r m A → Skami b r m A
\end{code}

\begin{code}
module Instructions where
  module jr (b r m : ℕ) (r₁ : ℕ) where
    record M : Set where
      field
        m₁ : r₁ < r

    nibarda : ℕ
    nibarda = {!!}

    f : ∀ {a} → {A : Set a}
      → M
      → Skami b r m A
      → Skami b r m A
    f m sk = record sk {pc = 𝕍.lookup rx $ 𝔽.fromℕ< $ M.m₁ m}
      where
      rx = Rucyca'a.reg $ Skami.rucyca'a sk

    M? : Dec M
    M? with r₁ ℕ.<? r
    ... | yes p = yes $ record {m₁ = p}
    ... | no N = no $ N ∘ M.m₁

    jr : ∀ {a} → {A : Set a} → Instruction A b r m
    jr = record {
      nibarda = nibarda;
      Mapti = M ;
      Mapti? = M?;
      f = f}

    module Veritas {a} {A : Set a}
                   (Mx : M)
                   (sk : Skami b r m A) where
      sk' = Instruction.f jr Mx sk
      rx = Rucyca'a.reg $ Skami.rucyca'a sk
      *r₁ = 𝕍.lookup rx $ 𝔽.fromℕ< $ M.m₁ Mx

      pc-r₁ : Skami.pc sk' ≡ *r₁
      pc-r₁ = _≡_.refl

      rdun : Skami.rucyca'a sk' ≡ Skami.rucyca'a sk
      rdun = _≡_.refl

      mdun : (_≡_ on Skami.mem) sk' sk
      mdun = _≡_.refl

      vdun : (_≡_ on Skami.vrici) sk' sk
      vdun = _≡_.refl

  module add (b r m : ℕ) (r₁ r₂ r₃ : ℕ) where
    record M : Set where
      field
        m₁ : r₁ < r
        m₂ : r₂ < r
        m₃ : r₃ < r

    nibarda : ℕ
    nibarda = {!!}

    f : ∀ {a} → {A : Set a}
      → M
      → Skami b r m A
      → Skami b r m A
    f mx sk = record sk {rucyca'a = rc; pc = pc'}
      where
      pc' = 𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda ▹ _mod (ℕ.suc b)
      rc : Rucyca'a b r
      rc = record rx {reg = r2d2}
        where
        rx = Skami.rucyca'a sk
        r2d2 : Vec (𝔽 $ ℕ.suc b) r
        r2d2 = 𝕍.updateAt r₁' (λ _ → r₂+r₃) reg
          where
          open M mx
          r₁' = 𝔽.fromℕ< m₁
          reg = Rucyca'a.reg rx
          r₂+r₃ = _mod_ (l r₂' ℕ.+ l r₃') (ℕ.suc b)
            where
            r₂' = 𝔽.fromℕ< m₂
            r₃' = 𝔽.fromℕ< m₃
            l = 𝔽.toℕ ∘ 𝕍.lookup reg

    M? : Dec M
    M? with r₁ <? r | r₂ <? r | r₃ <? r
    ... | yes m₁ | yes m₂ | yes m₃ = yes $ record {
      m₁ = m₁;
      m₂ = m₂;
      m₃ = m₃
      }
      where
      N⇒F : ∀ {a} → {A : Set a} → {A? : Dec A} → ¬ A → False A?
      N⇒F {A? = yes p} N = N p
      N⇒F {A? = no ¬p} N = tt
    ... | no m₁ | _ | _  = no $ m₁ ∘ M.m₁
    ... | _ | no m₂ | _  = no $ m₂ ∘ M.m₂
    ... | _ | _ | no m₃  = no $ m₃ ∘ M.m₃

    add : ∀ {a} → {A : Set a} → Instruction A b r m
    add = record {
      nibarda = nibarda;
      Mapti = M ;
      Mapti? = M?;
      f = f}

    module Veritas where
      dun⁻¹ : ∀ {a} → {A : Set a}
            → (sk : Skami b r m A)
            → (mx : M)
            → let sk' = sk ▹ Instruction.f add mx in
              (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ 𝔽.fromℕ< (M.m₁ mx)
            → ((_≡_ on (λ x → 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a x) r₄))
                sk
                sk')
      dun⁻¹ sk mx r₄ N = _≡_.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ _≡_.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open _≡_.≡-Reasoning
        rx = Skami.rucyca'a sk
        rx' = sk ▹ Instruction.f add mx ▹ Skami.rucyca'a

      dun : ∀ {a} → {A : Set a}
          → (sk : Skami b r m A)
          → (mx : M)
          → let sk' = sk ▹ Instruction.f add mx in
            let r₁' = 𝔽.fromℕ< $ M.m₁ mx in
            let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f add mx sk) r₁')
              (let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
               let r₂' = 𝔽.fromℕ< (M.m₂ mx) in
               let r₃' = 𝔽.fromℕ< (M.m₃ mx) in
               _mod_ (l r₂' ℕ.+ l r₃') $ ℕ.suc b))
      dun sk mx = 𝕍P.lookup∘updateAt r₁' $ Rucyca'a.reg rx
        where
        rx = Skami.rucyca'a sk
        r₁' = 𝔽.fromℕ< $ M.m₁ mx
        open _≡_.≡-Reasoning

  add = add.add

  module mv (b r mx : ℕ) (r₁ r₂ : ℕ) where
    mv : ∀ {a} → {A : Set a} → Instruction A b r mx
    mv = record {
      nibarda = {!!};
      Mapti = add.M b r mx _ _ _;
      Mapti? = add.M? _ _ _ _ _ _;
      f = Instruction.f $ add b r mx r₁ r₂ 0
      }

  module mul (b r mx : ℕ) (r₁ r₂ r₃ : ℕ) where
    f : add.M b r mx r₁ r₂ r₃ → Rucyca'a b r → Rucyca'a b r
    f M rx = record rx {reg = xd}
      where
      reg = Rucyca'a.reg rx
      xd = 𝕍.updateAt r₁' (λ _ → r₂*r₃) reg
        where
        open add.M M
        r₁' = 𝔽.fromℕ< m₁
        r₂*r₃ = _mod_ (l r₂' ℕ.* l r₃') $ ℕ.suc b
          where
          r₂' = 𝔽.fromℕ< m₂
          r₃' = 𝔽.fromℕ< m₃
          l = 𝔽.toℕ ∘ 𝕍.lookup reg

    mul : ∀ {a} → {A : Set a} → Instruction A b r mx
    mul {A = A} = record {
      nibarda = {!!};
      Mapti = add.M _ _ _ _ _ _;
      Mapti? = add.M? _ _ _ _ _ _;
      f = d
      }
      where
      d : add.M  b r mx r₁ r₂ r₃
        → Skami b r mx A
        → Skami b r mx A
      d = λ M sk → record sk {rucyca'a = f M $ Skami.rucyca'a sk}

    module Veritas where
      dun⁻¹ : ∀ {a} → {A : Set a}
            → (sk : Skami b r mx A)
            → (m : _)
            → (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ 𝔽.fromℕ< (add.M.m₁ m)
            → (let r4i = λ x → 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a x) r₄ in
               (_≡_ on r4i)
                sk
                (sk ▹ Instruction.f mul m))
      dun⁻¹ sk m r₄ N = _≡_.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ _≡_.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open _≡_.≡-Reasoning
        rx = Skami.rucyca'a sk
        rx' = sk ▹ Instruction.f mul m ▹ Skami.rucyca'a

      dun : ∀ {a} → {A : Set a}
          → (sk : Skami b r mx A)
          → (m : _)
          → let r₁' = 𝔽.fromℕ< $ add.M.m₁ m in
            let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
            let r₂' = 𝔽.fromℕ< (add.M.m₂ m) in
            let r₃' = 𝔽.fromℕ< (add.M.m₃ m) in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f mul m sk) r₁')
               ((l r₂' ℕ.* l r₃') mod ℕ.suc b))
      dun sk m = 𝕍P.lookup∘updateAt r₁' rx
        where
        rx = Rucyca'a.reg $ Skami.rucyca'a sk
        r₁' = 𝔽.fromℕ< $ add.M.m₁ m
        open _≡_.≡-Reasoning

  module addi (b r mx : ℕ) (r₁ r₂ i : ℕ) where
    M : Set
    M = {!!}

    f : ∀ {a} → {A : Set a}
      → M
      → Skami b r mx A
      → Skami b r mx A
    f {A = A} mp sk = record sk {rucyca'a = rx; pc = {!!}}
      where
      rx = record (Skami.rucyca'a sk) {reg = {!!}}

    addi : ∀ {a} → (A : Set a) → Instruction A b r mx
    addi = λ A → record {
      nibarda = {!!};
      Mapti = M;
      Mapti? = {!!};
      f = f
      }
\end{code}
\end{document}
