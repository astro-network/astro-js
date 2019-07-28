use super::{Kind, Node};
use crate::{error::Error, format::Token};
use serde::{Serialize, Serializer};

/// Float wrapper
#[derive(Clone, Copy, Debug, From, PartialEq)]
pub enum Float {
    /// `f32`
    F32(f32),

    /// `f64`
    F64(f64),
}

impl<'a> Node<'a> for Float {
    #[inline]
    fn kind(&self) -> Kind {
        Kind::Float
    }

    #[inline]
    fn as_float(&self) -> Option<Float> {
        Some(*self)
    }
}

impl Serialize for Float {
    #[inline]
    fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
    where
        S: Serializer,
    {
        match *self {
            Float::F32(num) => serializer.serialize_f32(num),
            Float::F64(num) => serializer.serialize_f64(num),
        }
    }
}

impl std::str::FromStr for Float {
    type Err = Error;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        unimplemented!();
    }
}
