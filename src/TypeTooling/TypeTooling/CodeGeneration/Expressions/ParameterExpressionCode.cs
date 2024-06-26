﻿using TypeTooling.RawTypes;

namespace TypeTooling.CodeGeneration.Expressions
{
    public class ParameterExpressionCode : ExpressionCode {
        public string Name { get; }
        public RawType Type { get; }

        public ParameterExpressionCode(string name, RawType type) {
            Name = name;
            Type = type;
        }
    }
}
