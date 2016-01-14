SWIFTC=swiftc

ifeq ($(shell uname -s), Darwin)
	XCODE=$(shell xcode-select -p)
	SDK=$(XCODE)/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk
	TARGET=x86_64-apple-macosx10.10
	SWIFTC=swiftc -target $(TARGET) -sdk $(SDK) -Xlinker -all_load
endif

LIBS=Frank Curassow Commander Inquiline Nest
TEST_LIBS=$(LIBS) Spectre

SWIFT_ARGS=$(foreach lib,$(LIBS),-Xlinker .build/debug/$(lib).a)
TEST_SWIFT_ARGS=$(foreach lib,$(TEST_LIBS),-Xlinker .build/debug/$(lib).a)

frank:
	@echo "Building Frank"
	@swift build

test: frank
	@.build/debug/spectre-build

example: frank
	@$(SWIFTC) -o example/example \
		example/example.swift \
		-I.build/debug \
		$(SWIFT_ARGS)
