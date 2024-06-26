﻿using TypeTooling.CompanionType;
using TypeTooling.Types;

namespace TypeTooling.DotNet.Types {
    public class DotNetObjectCustomLiteralParser : CustomLiteralParser {
        private readonly ICustomLiteralParser _companionType;

        public DotNetObjectCustomLiteralParser(ICustomLiteralParser companionType) {
            _companionType = companionType;
        }

        public override CustomLiteral Parse(string literal) {
            return _companionType.Parse(literal);
        }
    }
}
