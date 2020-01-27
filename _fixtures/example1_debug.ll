; ModuleID = 'example1_debug.bc'
source_filename = "WMCompiler 12.1.0 for Mac OS X x86 (64-bit) (January 25, 2020).wl"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%struct.st_MNumericArray = type { double, i64*, i64, i32, i32, i32, i64, i8*, i64 }
%struct.expr_struct = type { i32, i16, i8, i8, %struct_expr_contents }
%struct_expr_contents = type { i64 }
%"struct.std::__1::pair.177" = type { i32, i32 }
%struct.expr_normal_struct = type { i32, i16, i8, i8, %struct_expr_normal_contents }
%struct_expr_normal_contents = type { i64, i32, i64, %struct.expr_struct* }

@abortWatchHandle = internal global i32* null
@EternalMTensorRTL = internal global %struct.st_MNumericArray* null
@initializationDone = internal global i1 false
@TestGet_Integer = internal global i16 (%struct.expr_struct*, i32, i32, i64*)* null
@CreateMIntegerExpr = internal global %struct.expr_struct* (i64, i32, i32)* null

define dllexport i64 @Main(i64) {
start_1:
  %1 = icmp sgt i64 %0, 3
  br i1 %1, label %thenif_2, label %elseif_3

thenif_2:                                         ; preds = %start_1
  br label %endif_4

elseif_3:                                         ; preds = %start_1
  br label %endif_4

endif_4:                                          ; preds = %elseif_3, %thenif_2
  %2 = phi i64 [ 4, %thenif_2 ], [ %0, %elseif_3 ]
  br label %whileCondition_5

whileCondition_5:                                 ; preds = %whileBody_9, %endif_4
  %3 = phi i64 [ %2, %endif_4 ], [ %13, %whileBody_9 ]
  %4 = phi i64 [ 0, %endif_4 ], [ %12, %whileBody_9 ]
  %abortWatchHandle = load i32*, i32** @abortWatchHandle
  %5 = load i32, i32* %abortWatchHandle
  %6 = icmp eq i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %thenif21872_6, label %elseif21873_7

thenif21872_6:                                    ; preds = %whileCondition_5
  %8 = call i32 @checkAbortWatchThrow()
  br label %endif21874_8

elseif21873_7:                                    ; preds = %whileCondition_5
  br label %endif21874_8

endif21874_8:                                     ; preds = %elseif21873_7, %thenif21872_6
  %9 = phi i32 [ %8, %thenif21872_6 ], [ 0, %elseif21873_7 ]
  %10 = icmp sgt i64 %3, 99
  br i1 %10, label %whileBody_9, label %whileExit_10

whileBody_9:                                      ; preds = %endif21874_8
  %11 = call i64 @checked_binary_plus_Integer64_Integer64(i64 %3, i64 %0)
  %12 = call i64 @checked_binary_plus_Integer64_Integer64(i64 %4, i64 %11)
  %13 = call i64 @checked_binary_subtract_Integer64_Integer64(i64 %3, i64 1)
  br label %whileCondition_5

whileExit_10:                                     ; preds = %endif21874_8
  ret i64 %4
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

declare i32 @checkAbortWatchThrow()

declare i64 @checked_binary_plus_Integer64_Integer64(i64, i64)

declare i64 @checked_binary_subtract_Integer64_Integer64(i64, i64)

define dllexport i32 @Main_Initialization(i8** noalias) {
main_45:
  %initializationDone = load i1, i1* @initializationDone
  br i1 %initializationDone, label %true_46, label %false_47

true_46:                                          ; preds = %main_45
  ret i32 1

false_47:                                         ; preds = %main_45
  %1 = call i32* @getAbortWatchHandle()
  store i32* %1, i32** @abortWatchHandle
  %2 = call %struct.st_MNumericArray* @getEternalMTensor()
  store %struct.st_MNumericArray* %2, %struct.st_MNumericArray** @EternalMTensorRTL
  store i1 true, i1* @initializationDone
  %3 = getelementptr inbounds i8*, i8** %0, i32 36
  %4 = load i8*, i8** %3
  %FunCast = bitcast i8* %4 to i16 (%struct.expr_struct*, i32, i32, i64*)*
  store i16 (%struct.expr_struct*, i32, i32, i64*)* %FunCast, i16 (%struct.expr_struct*, i32, i32, i64*)** @TestGet_Integer
  %5 = getelementptr inbounds i8*, i8** %0, i32 10
  %6 = load i8*, i8** %5
  %FunCast1 = bitcast i8* %6 to %struct.expr_struct* (i64, i32, i32)*
  store %struct.expr_struct* (i64, i32, i32)* %FunCast1, %struct.expr_struct* (i64, i32, i32)** @CreateMIntegerExpr
  ret i32 0
}

define private void @Main_Wrapper_Call(i32, i8** noalias) unnamed_addr {
main_35:
  %2 = getelementptr inbounds i8*, i8** %1, i64 1
  %3 = load i8*, i8** %2
  %cast_type = bitcast i8* %3 to i64*
  %arg_1 = load i64, i64* %cast_type
  %4 = call i64 @Main(i64 %arg_1)
  %5 = getelementptr inbounds i8*, i8** %1, i64 2
  %6 = load i8*, i8** %5
  %cast_type1 = bitcast i8* %6 to i64*
  store i64 %4, i64* %cast_type1
  ret void
}

define dllexport noalias %"struct.std::__1::pair.177"* @Main_Wrapper(%struct.expr_struct* noalias, %struct.expr_struct** noalias) {
main_36:
  %initializationDone = load i1, i1* @initializationDone
  br i1 %initializationDone, label %true_38, label %false_37

false_37:                                         ; preds = %main_36
  %2 = call %"struct.std::__1::pair.177"* @New_CompilerError(i32 1, i32 0)
  ret %"struct.std::__1::pair.177"* %2

true_38:                                          ; preds = %main_36
  call void @setExceptionStyle(i32 0)
  %3 = bitcast %struct.expr_struct* %0 to %struct.expr_normal_struct*
  %4 = getelementptr %struct.expr_normal_struct, %struct.expr_normal_struct* %3, i32 0, i32 4
  %5 = getelementptr %struct_expr_normal_contents, %struct_expr_normal_contents* %4, i32 0, i32 2
  %6 = load i64, i64* %5
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %true_40, label %false_39

false_39:                                         ; preds = %true_38
  %8 = call %"struct.std::__1::pair.177"* @New_CompilerError(i32 2, i32 1)
  ret %"struct.std::__1::pair.177"* %8

true_40:                                          ; preds = %true_38
  %9 = alloca i8*, i32 3
  %10 = bitcast %struct.expr_struct* %0 to %struct.expr_normal_struct*
  %11 = getelementptr %struct.expr_normal_struct, %struct.expr_normal_struct* %10, i32 0, i32 4
  %12 = getelementptr %struct_expr_normal_contents, %struct_expr_normal_contents* %11, i32 0, i32 3
  %13 = getelementptr %struct.expr_struct*, %struct.expr_struct** %12, i64 1
  %14 = load %struct.expr_struct*, %struct.expr_struct** %13
  %15 = alloca i64
  %cast_type = bitcast i64* %15 to i8*
  %16 = getelementptr inbounds i8*, i8** %9, i64 1
  store i8* %cast_type, i8** %16
  %17 = alloca i64
  %TestGet_Integer = load i16 (%struct.expr_struct*, i32, i32, i64*)*, i16 (%struct.expr_struct*, i32, i32, i64*)** @TestGet_Integer
  %18 = call i16 %TestGet_Integer(%struct.expr_struct* %14, i32 64, i32 1, i64* %17)
  %19 = load i64, i64* %17
  store i64 %19, i64* %15
  %20 = icmp eq i16 %18, 1
  br i1 %20, label %true_42, label %false_41

false_41:                                         ; preds = %true_40
  %21 = call %"struct.std::__1::pair.177"* @New_CompilerError(i32 3, i32 1)
  ret %"struct.std::__1::pair.177"* %21

true_42:                                          ; preds = %true_40
  %22 = load i64, i64* %15
  %23 = alloca i64
  %cast_type1 = bitcast i64* %23 to i8*
  %24 = getelementptr inbounds i8*, i8** %9, i64 2
  store i8* %cast_type1, i8** %24
  %25 = alloca void (i32, i8**)*
  %cast_type2 = bitcast void (i32, i8**)** %25 to i8*
  %26 = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %cast_type2, i8** %26
  store void (i32, i8**)* @Main_Wrapper_Call, void (i32, i8**)** %25
  %27 = call %"struct.std::__1::pair.177"* @catchExceptionHandler(i32 1, i8** %9)
  %28 = icmp eq %"struct.std::__1::pair.177"* null, %27
  br i1 %28, label %true_43, label %false_44

true_43:                                          ; preds = %true_42
  %29 = load i64, i64* %23
  %CreateMIntegerExpr = load %struct.expr_struct* (i64, i32, i32)*, %struct.expr_struct* (i64, i32, i32)** @CreateMIntegerExpr
  %30 = call %struct.expr_struct* %CreateMIntegerExpr(i64 %29, i32 64, i32 1)
  store %struct.expr_struct* %30, %struct.expr_struct** %1
  br label %false_44

false_44:                                         ; preds = %true_43, %true_42
  ret %"struct.std::__1::pair.177"* %27
}

declare %"struct.std::__1::pair.177"* @New_CompilerError(i32, i32)

declare void @setExceptionStyle(i32)

declare %"struct.std::__1::pair.177"* @catchExceptionHandler(i32, i8**)

declare i32* @getAbortWatchHandle()

declare %struct.st_MNumericArray* @getEternalMTensor()

attributes #0 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!wolfram.version = !{!3}
!wolfram.build_time = !{!4}
!wolfram.options = !{!5}
!wolfram.expr = !{!6}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{!"Wolfram Compiler 2."}
!3 = !{!"12.1.0 for Mac OS X x86 (64-bit) (January 25, 2020)"}
!4 = !{!"Mon 27 Jan 2020 14:12:45"}
!5 = !{!"<|PassLogger -> Automatic, AddRuntime -> SharedLibrary, LazyJIT -> False, LLVMOptimization -> None, LoopHints -> Automatic, AddMetaData -> False, MachineArchitecture -> Automatic, InvocationMode -> WolframEngine, ExpressionInterface -> Automatic, TargetArchitecture -> Automatic, TargetSystemID -> Automatic, TargetTriple -> Automatic, DataLayout -> Automatic, Debug -> False, LLVMDebug -> False, ExceptionsModel -> Automatic, AbortHandling -> True, ExtraPasses -> <||>, PassOptions -> {}|>"}
!6 = !{!"Program[Function[{Typed[x, \22MachineInteger\22]}, Module[{z = x,g = 0}, If[z > 3, z = 4];\0AWhile[z > 99, Module[{Compile`AST`Macro`Builtin`Math`Private`val$$ = g}, g = Compile`AST`Macro`Builtin`Math`Private`val$$ + z + x];\0AModule[{Compile`AST`Macro`Builtin`Math`Private`val$$$$1 = z}, z = Compile`AST`Macro`Builtin`Math`Private`val$$$$1 - 1;\0ACompile`AST`Macro`Builtin`Math`Private`val$$$$1]];\0Ag]]]"}
