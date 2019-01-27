module Order.Project where

import           Control.Lens
import           Data.Ratio

-- data Project
--   = FinalProject
--   | FormulaProject

newtype Trust = Trust
  { unTrust :: Rational
  } deriving (Eq, Ord)

newtype Progress = Progress
  { unProgress :: Rational
  } deriving (Eq, Ord)

data Meta = Meta
  { trust    :: Trust
  , progress :: Progress
  }

newtype Rate = Rate
  { unRate :: Rational
  } deriving (Eq, Ord)

data Rated a = Rated
  { project :: a
  , rate    :: Rate
  }

data Formula a
  = Implication (Formula a) (Formula a)
  | Conjunction (Formula a) (Formula a)
  | Disjunction (Formula a) (Formula a)
  | Atom Meta a

rate :: Formula a -> Formula (Rated a)
rate = fixme "rate not implemented"
