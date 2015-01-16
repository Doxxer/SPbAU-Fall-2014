ROOT   = .
VM_ROOT = ../../../../SvnRepos/mathvm/
WITH_SDL=1
OPT=1

include $(VM_ROOT)/common.mk

USER_CFLAGS += -std=c++11 -Wno-unused -march=native -mtune=native

USER_OBJ = \
   $(JIT_OBJ) \
   $(OBJ)/BytecodeVisitor$(OBJ_SUFF) \
   $(OBJ)/Context$(OBJ_SUFF) \
   $(OBJ)/SimpleInterpreter$(OBJ_SUFF) \
   $(OBJ)/NativeFunctionGeneratorAsmJit$(OBJ_SUFF)

MATHVM = $(BIN)/mvm

all: $(MATHVM)

$(MATHVM): $(OUT) $(MATHVM_OBJ) $(USER_OBJ) $(OBJ)/main$(OBJ_SUFF)
	$(CXX) -o $@ $(OBJ)/main$(OBJ_SUFF) $(MATHVM_OBJ) $(USER_OBJ) $(LIBS)