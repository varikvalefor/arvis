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
\newunicodechar{⁻}{\ensuremath{\mathnormal{^-}}}
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
\newunicodechar{₃}{\ensuremath{\mathnormal{_3}}}
\newunicodechar{₄}{\ensuremath{\mathnormal{_4}}}
\newunicodechar{₅}{\ensuremath{\mathnormal{_5}}}
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
\newunicodechar{⍨}{\ensuremath{\raisebox{-0.25ex}{\ddot\sim}}}

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
    _⊔_;
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
    _ˢ_;
    _∘_;
    _$_
  )
  renaming (
    _|>_ to _▹_;
    flip to _⍨
  )
open import Data.Bool
  using (
  )
  renaming (
    if_then_else_ to if
  )
open import Data.List
  as 𝕃
  using (
    List
  )
open import Data.Unit
  using (
    tt;
    ⊤
  )
open import Data.Empty
  as ⊥
  using (
    ⊥-elim
  )
open import Data.Product
  using (
    _×_;
    _,_
  )
open import Data.Nat.DivMod
  using (
    _mod_;
    _%_
  )
open import Relation.Nullary
  using (
    Dec;
    yes;
    ¬_;
    no
  )
open import Data.Fin.Properties
  as DFP
  using (
    toℕ-fromℕ<
  )
open import Data.Vec.Properties
  as 𝕍P
  using (
  )
open import Truthbrary.Record.Eq
  using (
    _≡ᵇ_;
    _≟_;
    Eq
  )
open import Relation.Nullary.Decidable
  using (
    isYes≗does;
    dec-false;
    dec-true;
    False
  )
open import Relation.Binary.PropositionalEquality
  as ≡
  using (
    cong;
    _≡_
  )
\end{code}

\section{le vrici je fancu}

\begin{code}
module 𝔽0 where
  f : {n : ℕ} → 𝔽 n → 𝔽 n
  f {0} ()
  f {ℕ.suc _} _ = 𝔽.zero

  module Veritas where
    d0 : {n : ℕ} → (x : 𝔽 n) → 0 ≡ 𝔽.toℕ (f x)
    d0 {0} ()
    d0 {ℕ.suc _} _ = ≡.refl

𝔽0 = 𝔽0.f

≡⇒≡ᵇ : ∀ {a} → {A : Set a}
     → ⦃ _ : Eq A ⦄
     → {x z : A}
     → x ≡ z
     → x ≡ᵇ z ≡ Data.Bool.true
≡⇒≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-true (x ≟ z)

¬≡⇒¬≡ᵇ : ∀ {a} → {A : Set a}
       → ⦃ _ : Eq A ⦄
       → {x z : A}
       → ¬_ $ x ≡ z
       → x ≡ᵇ z ≡ Data.Bool.false
¬≡⇒¬≡ᵇ {x = x} {z} = ≡.trans (isYes≗does _) ∘ dec-false (x ≟ z)
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
    mem : Vec (𝔽 $ ℕ.suc b) m
    vrici : A
\end{code}

\section{le co'e ja midnoi se ctaipe}

\begin{code}
record Instruction {a} (A : Set a) (b r m : ℕ) : Set (lsuc a ⊔ lsuc 0ₗ) where
  field
    nibarda : ℕ
    Mapti : Set
    Mapti? : Dec Mapti
    f : Mapti → Skami b r m A → Skami b r m A
\end{code}

\begin{code}
module Instructions where
  x0-vrici : {b r : ℕ}
           → (r₁ : 𝔽 r)
           → (n : 𝔽 $ ℕ.suc b)
           → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
           → (_≡_
               rc'
               (𝕍.updateAt
                 r₁
                 (λ _ → if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rc r₁) n)
                 rc))
           → (ml : 0 ℕ.< r)
           → 0 ≡_ $ 𝔽.toℕ $ 𝕍.lookup rc $ 𝔽.fromℕ< ml
           → 0 ≡_ $ 𝔽.toℕ $ 𝕍.lookup rc' $ 𝔽.fromℕ< ml
  x0-vrici {b = b} r₁ n rx rx' d ml d0 = ≡.sym $ ≡.trans rxdun $ ≡.sym d0
    where
    *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) n
    rxdun = cong 𝔽.toℕ $ begin
      f rx' ≡⟨ cong f d ⟩
      f (𝕍.updateAt r₁ (λ _ → *r₁') rx) ≡⟨ ud ⟩
      f rx ∎
      where
      f = λ x → 𝕍.lookup x $ 𝔽.fromℕ< ml
      open ≡.≡-Reasoning
      ud : f (𝕍.updateAt r₁ (λ _ → *r₁') rx) ≡ f rx
      ud with 𝔽.fromℕ< ml ≟ r₁
      ... | no N = 𝕍P.lookup∘updateAt′ _ _ N _
      ... | yes d = begin
        f (𝕍.updateAt r₁ (λ _ → *r₁') rx)
          ≡⟨ lud $ 𝕍.updateAt r₁ (λ _ → *r₁') rx ⟩
        𝕍.lookup (𝕍.updateAt r₁ (λ _ → *r₁') rx) r₁
          ≡⟨ 𝕍P.lookup∘updateAt r₁ rx ⟩
        *r₁'
          ≡⟨ ≡.refl ⟩
        if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) n
          ≡⟨ d ▹ ≡.sym ▹ cong (λ d → if (𝔽.toℕ d ≡ᵇ 0) _ _) ⟩
        if (𝔽.toℕ n0 ≡ᵇ 0) (𝕍.lookup rx n0) n
          ≡⟨ 𝔽P.toℕ-fromℕ< _ ▹ cong (λ d → if (d ≡ᵇ 0) (f rx) n) ⟩
        f rx ∎
        where
        n0 = 𝔽.fromℕ< ml
        lud : (x : Vec (𝔽 $ ℕ.suc b) _)
            → f x ≡ 𝕍.lookup x r₁
        lud x = d ▹ cong (𝕍.lookup x)
        import Data.Fin.Properties
          as 𝔽P

  0-dro-s : {b r : ℕ}
          → (i : 𝔽 r)
          → (n : 𝔽 $ ℕ.suc b)
          → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
          → (_≡_
              rc'
              (𝕍.updateAt
                i
                (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
                rc))
          → 𝔽.toℕ i ≡ 0
          → rc ≡ rc'
  0-dro-s i n rc rc' d d0 = ≡.trans d ud ▹ ≡.sym
    where
    ud = updateAt-id rc _ _ $ ≡⇒≡ᵇ d0 ▹ cong (λ b → if b *i n)
      where
      *i = 𝕍.lookup rc i
      updateAt-id : ∀ {a} → {A : Set a}
                  → {n : ℕ}
                  → (x : Vec A n)
                  → (i : 𝔽 n)
                  → (f : A → A)
                  → f (𝕍.lookup x i) ≡ 𝕍.lookup x i
                  → 𝕍.updateAt i f x ≡ x
      updateAt-id (_ 𝕍.∷ _) 𝔽.zero _ = cong (𝕍._∷ _)
      updateAt-id (_ 𝕍.∷ _ 𝕍.∷ xs) (𝔽.suc i) f = cong (_ 𝕍.∷_) ∘ rd
        where
        rd = updateAt-id (_ 𝕍.∷ xs) i f

  N0-d-s : {b r : ℕ}
         → (i : 𝔽 r)
         → (n : 𝔽 $ ℕ.suc b)
         → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
         → (_≡_
             rc'
             (𝕍.updateAt
               i
               (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
               rc))
         → ¬_ $ 𝔽.toℕ i ≡ 0
         → 𝕍.lookup rc' i ≡ n
  N0-d-s i n rc rc' d N = begin
    𝕍.lookup rc' i ≡⟨ d ▹ cong (λ x → 𝕍.lookup x i) ⟩
    𝕍.lookup (𝕍.updateAt i _ _) i ≡⟨ 𝕍P.lookup∘updateAt i rc ⟩
    if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n ≡⟨ ≡.refl ⟩
    _ ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → if b (𝕍.lookup rc i) n) ⟩
    n ∎
    where
    open ≡.≡-Reasoning

  N0-d-s' : {b r : ℕ}
          → (i : 𝔽 r)
          → (n : 𝔽 $ ℕ.suc b)
          → (rc rc' : Vec (𝔽 $ ℕ.suc b) r)
          → (_≡_
              rc'
              (𝕍.updateAt
                i
                (λ _ → if (𝔽.toℕ i ≡ᵇ 0) (𝕍.lookup rc i) n)
                rc))
          → (j : 𝔽 r)
          → ¬_ $ j ≡ i
          → 𝕍.lookup rc' j ≡ 𝕍.lookup rc j
  N0-d-s' i _ rc rc' d j N = begin
    𝕍.lookup rc' j ≡⟨ d ▹ cong (λ x → 𝕍.lookup x j) ⟩
    _ ≡⟨ 𝕍P.lookup∘updateAt′ j i N rc ⟩
    𝕍.lookup rc j ∎
    where
    open ≡.≡-Reasoning

  record RPc-S {a} (A : Set a)
                  (b r m : ℕ)
                  (is : List $ 𝔽 r)
                  (x z : Skami b r m A) : Set a where
    private
      ra : Skami b r m A → Vec (𝔽 $ ℕ.suc b) r
      ra = Rucyca'a.reg ∘ Skami.rucyca'a

      D : ∀ {c} → {C : Set c} → (Skami b r m A → C) → Set c
      D f = f z ≡ f x

    field
      dr : (j : 𝔽 r)
         → ((i : 𝔽 _) → ¬_ $ j ≡ 𝕃.lookup is i)
         → D $ λ x → 𝕍.lookup (ra x) j
      dv : D Skami.vrici
      dm : D Skami.mem

  module jalr (b r m : ℕ) (r₁ r₂ : 𝔽 r) where
    nibarda : ℕ
    nibarda = {!!}

    record M : Set where

    M? : Dec M
    M? = yes $ record {}

    module f {a} {A : Set a}
             (mx : M)
             (sk : Skami b r m A) where

      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup rx r₂

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) pc+nb

      rx' : typeOf rx
      rx' = 𝕍.updateAt r₁ (λ _ → *r₁') rx

      x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup rx' $ 𝔽.fromℕ< ml)
      x0 ml = x0-vrici r₁ pc+nb rx rx' ≡.refl ml x0'
        where
        x0' = Rucyca'a.x0 (Skami.rucyca'a sk) ml

      rc' : Rucyca'a b r
      rc' = record (Skami.rucyca'a sk) {reg = rx'; x0 = x0}

      f : Skami b r m A
      f = record sk {pc = *r₂; rucyca'a = rc'}

    jalr : ∀ {a} → {A : Set a} → Instruction A b r m
    jalr = record {
      nibarda = nibarda;
      Mapti = M;
      Mapti? = M?;
      f = f.f
      }

    module Veritas {a} {A : Set a}
                   (mx : M)
                   (sk : Skami b r m A) where
      open f mx sk

      dpc : (_≡_
              (𝕍.lookup rx r₂)
              (Skami.pc $ f.f mx sk))
      dpc = _≡_.refl

      drx : (r₄ : 𝔽 r)
          → ¬_ $ r₄ ≡ r₁
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            ((_≡_ on (λ s → 𝕍.lookup (rx s) r₄))
              sk
              f)
      drx _ N = 𝕍P.lookup∘updateAt′ _ _ N _ ▹ ≡.sym

      drx' : ¬_ $ 𝔽.toℕ r₁ ≡ 0
           → (r₄ : 𝔽 r)
           → Set Function.∋ {!!}
           → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
             ((_≡_ on ((𝕍.lookup ⍨) r₄ ∘ rx))
               sk
               f)
           → ¬_ $ r₄ ≡ r₁
      drx' = {!!}

      0-dro : 𝔽.toℕ r₁ ≡ 0
            →((_≡_ on_ $ Rucyca'a.reg ∘ Skami.rucyca'a)
               sk
               f)
      0-dro = 0-dro-s r₁ pc+nb (rvra sk) _ ≡.refl
        where
        rvra = Rucyca'a.reg ∘ Skami.rucyca'a

  module jr (b r m : ℕ) (r₁ : 𝔽 r) where
    record M : Set where

    f0 : 𝔽 r
    f0 = 𝔽0 r₁

    jr : ∀ {a} → {A : Set a} → Instruction A b r m
    jr = jalr.jalr b r m f0 r₁

    module Veritas {a} {A : Set a}
                   (Mx : jalr.M b r m f0 r₁)
                   (sk : Skami b r m A) where
      open jalr b r m f0 r₁
      open f Mx sk
        renaming (
          *r₂ to *r₁
        )

      sk' = f.f Mx sk

      pc-r₁ : Skami.pc sk' ≡ *r₁
      pc-r₁ = ≡.refl

      rdun : (_≡_ on Rucyca'a.reg ∘ Skami.rucyca'a) sk sk'
      rdun = 0-dro-s f0 pc+nb _ _ ≡.refl (𝔽0.Veritas.d0 _ ▹ ≡.sym)

      mdun : (_≡_ on Skami.mem) sk' sk
      mdun = ≡.refl

      vdun : (_≡_ on Skami.vrici) sk' sk
      vdun = ≡.refl

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

  module add (b r m : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
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
        l = 𝔽.toℕ ∘ 𝕍.lookup reg

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup reg r₁) r₂+r₃

      r2d2 : Vec (𝔽 $ ℕ.suc b) r
      r2d2 = 𝕍.updateAt r₁ (λ _ → *r₁') reg

      x0 : (ml : 0 ℕ.< r) → 0 ≡ 𝔽.toℕ (𝕍.lookup r2d2 $ 𝔽.fromℕ< ml)
      x0 ml = x0-vrici r₁ r₂+r₃ reg r2d2 ≡.refl ml x0'
        where
        x0' = Rucyca'a.x0 (Skami.rucyca'a sk) ml

      rc : Rucyca'a b r
      rc = record rx {reg = r2d2; x0 = x0}

      f : Skami b r m A
      f = record sk {rucyca'a = rc; pc = pc'}

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
            → let reg = Rucyca'a.reg ∘ Skami.rucyca'a in
              ((_≡_ on (λ x → 𝕍.lookup (reg x) r₄))
                sk'
                sk)
      dun⁻¹ sk mx r₄ N = begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ ≡.refl ⟩
        𝕍.lookup r2d2 r₄ ≡⟨ ≡.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N reg ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open f mx sk
        rx' = Skami.rucyca'a $ f.f mx sk
        open ≡.≡-Reasoning

      dun : ∀ {a} → {A : Set a}
          → (mx : _)
          → (sk : Skami b r m A)
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (let ri = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
             _≡_
              (𝔽.toℕ $ 𝕍.lookup (rx $ f mx sk) r₁)
              ((_% ℕ.suc b)
                (ℕ._+_
                  (ri r₂)
                  (ri r₃))))
      dun mx sk N = begin
        𝔽.toℕ (𝕍.lookup r2d2 r₁)
          ≡⟨ N0-d-s _ _ _ _ ≡.refl N ▹ cong 𝔽.toℕ ⟩
        𝔽.toℕ r₂+r₃
          ≡⟨ _≡_.refl ⟩
        𝔽.toℕ (f.r₂+r₃ mx sk)
          ≡⟨ ≡.refl ⟩
        𝔽.toℕ ((fℕ r₂ ℕ.+ fℕ r₃) mod ℕ.suc b)
          ≡⟨ toℕ-fromℕ< _ ⟩
        (fℕ r₂ ℕ.+ fℕ r₃) % ℕ.suc b ∎
        where
        open f mx sk
        *r₁ = 𝕍.lookup reg r₁
        fℕ = 𝔽.toℕ ∘ 𝕍.lookup reg
        open ≡.≡-Reasoning

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

  add = add.add

  module slli (b r m : ℕ) (r₁ r₂ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    record M : Set where

    M? : Dec M
    M? = yes $ record {}

    module f {a} {A : Set a}
             (mx : M)
             (sk : Skami b r m A) where

      rc : Rucyca'a b r
      rc = Skami.rucyca'a sk

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg rc

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup reg r₂

      *r₁ : 𝔽 $ ℕ.suc b
      *r₁ = 𝕍.lookup reg r₁

      exp : 𝔽 $ ℕ.suc b
      exp = (𝔽.toℕ *r₂ ℕ.* (2 ℕ.^ (𝔽.toℕ imm % ℕ.suc b))) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) *r₁ exp

      reg' : Vec (𝔽 $ ℕ.suc b) r
      reg' = 𝕍.updateAt r₁ (λ _ → *r₁') reg

      rc' : Rucyca'a b r
      rc' = record (Skami.rucyca'a sk) {reg = reg'; x0 = x0}
        where
        x0 : (ml : 0 ℕ.< r) → 0 ≡ _
        x0 = x0-vrici r₁ exp _ _ ≡.refl ˢ Rucyca'a.x0 rc


      f : Skami b r m A
      f = record sk {pc = pc+nb; rucyca'a = rc'}

    slli : ∀ {a} → {A : Set a} → Instruction A b r m
    slli = record {
      nibarda = nibarda;
      Mapti = M;
      Mapti? = M?;
      f = f.f
      }

    module Veritas {a} {A : Set a}
                   (mx : M)
                   (sk : Skami b r m A) where

      open f mx sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      dun : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → 𝕍.lookup reg' r₁ ≡ exp
      dun = N0-d-s _ _ _ _ ≡.refl

      dunV : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (_≡_
              (𝔽.toℕ $ 𝕍.lookup (Rucyca'a.reg $ Skami.rucyca'a f) r₁)
              (_%_
                (𝔽.toℕ *r₂ ℕ.* (2 ℕ.^ (𝔽.toℕ imm % ℕ.suc b)))
                (ℕ.suc b)))
      dunV N = ≡.trans (dun N ▹ cong 𝔽.toℕ) $ toℕ-fromℕ< _

      dun' : (r₄ : 𝔽 _)
           → ¬_ $ r₄ ≡ r₁
           → let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             𝕍.lookup (ra f) r₄ ≡ 𝕍.lookup (ra sk) r₄
      dun' = N0-d-s' r₁ exp reg reg' ≡.refl

  slli = slli.slli

  module mv (b r mx : ℕ) (r₁ r₂ : 𝔽 r) where
    mv : ∀ {a} → {A : Set a} → Instruction A b r mx
    mv {A = A} = record {
      nibarda = Instruction.nibarda {A = A} ad;
      Mapti = add.M _ _ _ _ _ _;
      Mapti? = add.M? _ _ _ _ _ _;
      f = Instruction.f ad
      }
      where
      ad = add b r mx r₁ r₂ (𝔽0 r₁)

    module Veritas {a} {A : Set a}
                   (m : add.M b r mx r₁ r₂ $ 𝔽0 r₁)
                   (sk : Skami b r mx A) where
      open add.f b r mx r₁ r₂ (𝔽0 r₁) m sk

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → add.Veritas.dun⁻¹ b r mx r₁ r₂ (𝔽0 r₁) sk _ j $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module mul (b r mx : ℕ) (r₁ r₂ r₃ : 𝔽 r) where
    module f (M : add.M b r mx r₁ r₂ r₃)
             (rx : Rucyca'a b r) where

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg rx

      r₂*r₃ : 𝔽 $ ℕ.suc b
      r₂*r₃ = (l r₂ ℕ.* l r₃) mod ℕ.suc b
        where
        l = 𝔽.toℕ ∘ 𝕍.lookup reg

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup reg r₁) r₂*r₃

      reg' : Vec (𝔽 $ ℕ.suc b) r
      reg' = 𝕍.updateAt r₁ (λ _ → *r₁') reg

      f : Rucyca'a b r
      f = record rx {reg = reg'; x0 = x0-vrici r₁ r₂*r₃ _ _ ≡.refl ˢ x0}
        where
        x0 = Rucyca'a.x0 rx

    f = f.f

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
      f' M sk = record sk {rucyca'a = rcx; pc = pc'}
        where
        rcx = f M $ Skami.rucyca'a sk
        pc' = (_mod ℕ.suc b) $ 𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda

    module Veritas {a} {A : Set a} (sk : Skami b r mx A) where
      dun⁻¹ : (m : _)
            → (r₄ : 𝔽 r)
            → ¬_ $ r₄ ≡ r₁
            → (let rrc = Rucyca'a.reg ∘ Skami.rucyca'a in
               let r4i = λ x → 𝕍.lookup (rrc x) r₄ in
               (_≡_ on r4i)
                sk
                (sk ▹ Instruction.f mul m))
      dun⁻¹ m r₄ N = ≡.sym $ begin
        𝕍.lookup (Rucyca'a.reg rx') r₄ ≡⟨ ≡.refl ⟩
        _ ≡⟨ 𝕍P.lookup∘updateAt′ _ _ N $ Rucyca'a.reg rx ⟩
        𝕍.lookup (Rucyca'a.reg rx) r₄ ∎
        where
        open ≡.≡-Reasoning
        rx = Skami.rucyca'a sk
        rx' = sk ▹ Instruction.f mul m ▹ Skami.rucyca'a

      dun : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (m : _)
          → let rx = Rucyca'a.reg ∘ Skami.rucyca'a in
            let l = 𝔽.toℕ ∘ 𝕍.lookup (rx sk) in
            (_≡_
              (𝕍.lookup (rx $ Instruction.f mul m sk) r₁)
               ((l r₂ ℕ.* l r₃) mod ℕ.suc b))
      dun N _ = N0-d-s _ _ _ _ ≡.refl N

  module addi (b r mx : ℕ) (r₁ r₂ : 𝔽 r) (i : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    record M : Set where

    M? : Dec M
    M? = yes $ record {}

    module f {a} {A : Set a}
             (m : M)
             (sk : Skami b r mx A) where

      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      reg : Vec (𝔽 $ ℕ.suc b) r
      reg = Rucyca'a.reg $ Skami.rucyca'a sk

      *r₂ : 𝔽 $ ℕ.suc b
      *r₂ = 𝕍.lookup reg r₂

      *r₂+i : 𝔽 $ ℕ.suc b
      *r₂+i = (𝔽.toℕ i ℕ.+ 𝔽.toℕ *r₂) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup reg r₁) *r₂+i

      reg' : Vec (𝔽 $ ℕ.suc b) r
      reg' = 𝕍.updateAt r₁ (λ _ → *r₁') reg

      rx : Rucyca'a b r
      rx = record (Skami.rucyca'a sk) {reg = reg'; x0 = x0}
        where
        x0 = x0-vrici r₁ _ reg _ ≡.refl ˢ x0'
          where
          x0' = Rucyca'a.x0 $ Skami.rucyca'a sk

      f : Skami b r mx A
      f = record sk {rucyca'a = rx; pc = pc+nb}

    addi : ∀ {a} → (A : Set a) → Instruction A b r mx
    addi A = record {
      nibarda = nibarda;
      Mapti = M;
      Mapti? = M?;
      f = f.f
      }

    module Veritas {a} {A : Set a}
                   (m : M)
                   (sk : Skami b r mx A) where

      open f m sk

      rgra : ∀ {a} → {A : Set a}
           → {b r m : ℕ}
           → Skami b r m A
           → Vec (𝔽 $ ℕ.suc b) r
      rgra = Rucyca'a.reg ∘ Skami.rucyca'a

      module _ (N : ¬_ $ 𝔽.toℕ r₁ ≡ 0) where
        r₁+ : (_≡_
                (𝔽.toℕ $ 𝕍.lookup (rgra f) r₁)
                ((_% ℕ.suc b)
                  (𝔽.toℕ i ℕ.+_ $ 𝔽.toℕ $ 𝕍.lookup (rgra sk) r₂)))
        r₁+ = begin
          𝔽.toℕ (𝕍.lookup (rgra f) r₁) ≡⟨ ≡.refl ⟩
          _ ≡⟨ 𝕍P.lookup∘updateAt r₁ _ ▹ cong 𝔽.toℕ ⟩
          𝔽.toℕ *r₁' ≡⟨ ≡.refl ⟩
          𝔽.toℕ (if (𝔽.toℕ r₁ ≡ᵇ 0) *r₁ *r₂+i) ≡⟨ ≡.refl ⟩
          _ ≡⟨ ¬≡⇒¬≡ᵇ N ▹ cong (λ b → 𝔽.toℕ $ if b *r₁ *r₂+i) ⟩
          𝔽.toℕ *r₂+i ≡⟨ toℕ-fromℕ< _ ⟩
          _ ∎
          where
          *r₁ = 𝕍.lookup reg r₁
          open ≡.≡-Reasoning

      rₓd : (r₄ : 𝔽 r)
          → ¬_ $ r₄ ≡ r₁
          → ((_≡_ on λ x → 𝕍.lookup (rgra x) r₄)
              sk
              f)
      rₓd _ N = 𝕍P.lookup∘updateAt′ _ _ N _ ▹ ≡.sym

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → rₓd j (N 𝔽.zero) ▹ ≡.sym;
        dv = ≡.refl;
        dm = ≡.refl
        }

  module auipc (b r mx : ℕ) (r₁ : 𝔽 r) (imm : 𝔽 {!!}) where
    nibarda : ℕ
    nibarda = {!!}

    module f {a} {A : Set a} (_ : ⊤) (sk : Skami b r mx A) where
      pc+nb : 𝔽 $ ℕ.suc b
      pc+nb = (𝔽.toℕ (Skami.pc sk) ℕ.+ nibarda) mod _

      rc : Rucyca'a b r
      rc = Skami.rucyca'a sk

      rx : Vec (𝔽 $ ℕ.suc b) r
      rx = Rucyca'a.reg rc

      *r₁ : 𝔽 $ ℕ.suc b
      *r₁ = 𝕍.lookup rx r₁

      pc+i : 𝔽 $ ℕ.suc b
      pc+i = (𝔽.toℕ (Skami.pc sk) ℕ.+ 𝔽.toℕ imm) mod _

      *r₁' : 𝔽 $ ℕ.suc b
      *r₁' = if (𝔽.toℕ r₁ ≡ᵇ 0) (𝕍.lookup rx r₁) pc+i

      rx' : Vec (𝔽 $ ℕ.suc b) r
      rx' = 𝕍.updateAt r₁ (λ _ → *r₁') rx

      rc' : Rucyca'a b r
      rc' = record rc {reg = rx'; x0 = x0-vrici r₁ pc+i rx rx' ≡.refl ˢ x0}
        where
        x0 = Rucyca'a.x0 $ Skami.rucyca'a sk

      f : Skami b r mx A
      f = record sk {rucyca'a = rc'; pc = pc+nb}

    auipc : ∀ {a} → (A : Set a) → Instruction A b r mx
    auipc A = record {
      nibarda = nibarda;
      Mapti = ⊤;
      Mapti? = yes tt;
      f = f.f
      }

    module Veritas {a} {A : Set a} (m : ⊤) (sk : Skami b r mx A) where
      open f m sk

      b32→32 : ℕ.suc b ≡ 32 → nibarda ≡ 32
      b32→32 = {!!}

      lup : ¬_ $ 𝔽.toℕ r₁ ≡ 0
          → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
             _≡_
              (𝔽.toℕ $ 𝕍.lookup (ra $ f.f m sk) r₁)
              ((_% ℕ.suc b)
                (𝔽.toℕ (Skami.pc sk) ℕ.+ 𝔽.toℕ imm)))
      lup N = ≡.trans *r₁'≡mod $ toℕ-fromℕ< _
        where
        *r₁'≡mod = N0-d-s r₁ pc+i rx rx' ≡.refl N ▹ cong 𝔽.toℕ

      lup' : (r₄ : 𝔽 r)
           → ¬_ $ r₄ ≡ r₁
           → (let ra = Rucyca'a.reg ∘ Skami.rucyca'a in
              _≡_
               (𝕍.lookup (ra $ f.f m sk) r₄)
               (𝕍.lookup (ra sk) r₄))
      lup' = N0-d-s' r₁ pc+i rx rx' ≡.refl

      drpc : RPc-S A b r mx 𝕃.[ r₁ ] sk f
      drpc = record {
        dr = λ j N → lup' _ $ N 𝔽.zero;
        dv = ≡.refl;
        dm = ≡.refl
        }
\end{code}
\end{document}
