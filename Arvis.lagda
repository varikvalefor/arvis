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
    x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup reg $ 𝔽.fromℕ< ml)
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
  module jr (b r m : ℕ) (r₁ : 𝔽.Fin r) where
    record M : Set where

    nibarda : ℕ
    nibarda = {!!}

    module f {a} {A : Set a}
             (mx : M)
             (sk : Skami b r m A) where

      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₁ : 𝔽 $ ℕ.suc b
      *r₁ = 𝕍.lookup rx r₁

      f : Skami b r m A
      f = record sk {pc = *r₁}

    f = f.f

    M? : Dec M
    M? = yes $ record {}

    jr : ∀ {a} → {A : Set a} → Instruction A b r m
    jr = record {
      nibarda = nibarda;
      Mapti = M ;
      Mapti? = M?;
      f = f}

    module Veritas {a} {A : Set a}
                   (Mx : M)
                   (sk : Skami b r m A) where
      open f Mx sk

      sk' = f.f Mx sk

      pc-r₁ : Skami.pc sk' ≡ *r₁
      pc-r₁ = _≡_.refl

      rdun : Skami.rucyca'a sk' ≡ Skami.rucyca'a sk
      rdun = _≡_.refl

      mdun : (_≡_ on Skami.mem) sk' sk
      mdun = _≡_.refl

      vdun : (_≡_ on Skami.vrici) sk' sk
      vdun = _≡_.refl

  module add (b r m : ℕ) (r₁ r₂ r₃ : 𝔽.Fin r) where
    record M : Set where

    nibarda : ℕ
    nibarda = {!!}

    module f {a} {A : Set a}
             (mx : M)
             (sk : Skami b r m A) where

      rx : Rucyca'a b r
      rx = Skami.rucyca'a sk

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg rx

      pc' : 𝔽 $ ℕ.suc b
      pc' = 𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda ▹ _mod (ℕ.suc b)

      r₂+r₃ : 𝔽 $ ℕ.suc b
      r₂+r₃ = _mod_ (l r₂ ℕ.+ l r₃) (ℕ.suc b)
        where
        open M mx
        l = 𝔽.toℕ ∘ 𝕍.lookup reg

      f : Skami b r m A
      f = record sk {rucyca'a = rc; pc = pc'}
        where
        rc : Rucyca'a b r
        rc = record rx {reg = r2d2; x0 = {!!}}
          where
          r2d2 : Vec (𝔽 $ ℕ.suc b) r
          r2d2 = 𝕍.updateAt r₁ (λ _ → r₂+r₃) reg

    f = f.f

    M? : Dec M
    M? = yes $ record {}

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
            → ¬_ $ r₄ ≡ r₁
            → ((_≡_ on (λ x → 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a x) r₄))
                sk
                sk')
      dun⁻¹ sk mx r₄ N = _≡_.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ _≡_.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open f mx sk
        open _≡_.≡-Reasoning
        rx' = sk ▹ Instruction.f add mx ▹ Skami.rucyca'a

      dun : ∀ {a} → {A : Set a}
          → (mx : _)
          → (sk : Skami b r m A)
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            (_≡_
              (𝕍.lookup (rx $ f.f mx sk) r₁)
              (f.r₂+r₃ mx sk))
      dun mx sk = 𝕍P.lookup∘updateAt r₁ reg
        where
        open f mx sk

  add = add.add

  module mv (b r mx : ℕ) (r₁ r₂ : 𝔽.Fin r) where
    mv : ∀ {a} → {A : Set a} → Instruction A b r mx
    mv = record {
      nibarda = {!!};
      Mapti = add.M b r mx _ _ {!!};
      Mapti? = add.M? _ _ _ _ _ _;
      f = Instruction.f $ add b r mx r₁ r₂ {!!} -- 0
      }

  module mul (b r mx : ℕ) (r₁ r₂ r₃ : 𝔽.Fin r) where
    f : add.M b r mx r₁ r₂ r₃ → Rucyca'a b r → Rucyca'a b r
    f M rx = record rx {reg = xd; x0 = {!!}}
      where
      reg = Rucyca'a.reg rx
      xd = 𝕍.updateAt r₁ (λ _ → r₂*r₃) reg
        where
        open add.M M
        r₂*r₃ = (l r₂ ℕ.* l r₃) mod ℕ.suc b
          where
          l = 𝔽.toℕ ∘ 𝕍.lookup reg

    nibarda : ℕ
    nibarda = {!!}

    mul : ∀ {a} → {A : Set a} → Instruction A b r mx
    mul {A = A} = record {
      nibarda = nibarda;
      Mapti = add.M _ _ _ _ _ _;
      Mapti? = add.M? _ _ _ _ _ _;
      f = f'
      }
      where
      f' : add.M  b r mx r₁ r₂ r₃
         → Skami b r mx A
         → Skami b r mx A
      f' M sk = record sk {rucyca'a = f M $ Skami.rucyca'a sk; pc = pc'}
        where
        pc' = (_mod ℕ.suc b) $ 𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda

    module Veritas where
      dun⁻¹ : ∀ {a} → {A : Set a}
            → (sk : Skami b r mx A)
            → (m : _)
            → (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ r₁
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
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f mul m sk) r₁)
               ((l r₂ ℕ.* l r₃) mod ℕ.suc b))
      dun sk m = 𝕍P.lookup∘updateAt r₁ rx
        where
        rx = Rucyca'a.reg $ Skami.rucyca'a sk
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
      rx = record (Skami.rucyca'a sk) {reg = {!!}; x0 = {!!}}

    addi : ∀ {a} → (A : Set a) → Instruction A b r mx
    addi = λ A → record {
      nibarda = {!!};
      Mapti = M;
      Mapti? = {!!};
      f = f
      }
\end{code}
\end{document}
