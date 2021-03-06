; ModuleID = 'h264ref.sei.UpdateRandomAccess.ll'
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips--linux-gnu"

%struct.ImageParameters.1372 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture.1373*, %struct.Slice.1374*, %struct.macroblock.1375*, [1200 x %struct.syntaxelement.1376], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s.1377*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture.1373 = type { i32, i32, [100 x %struct.Slice.1374*], i32, float, float, float }
%struct.Slice.1374 = type { i32, i32, i32, i32, i32, i32, %struct.datapartition.1378*, %struct.MotionInfoContexts.1379*, %struct.TextureInfoContexts.1380*, %struct.RMPNIbuffer_s.1381*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition.1378 = type { %struct.Bitstream.1370*, %struct.EncodingEnvironment.1382, i32 (%struct.syntaxelement.1376*, %struct.datapartition.1378*)* }
%struct.Bitstream.1370 = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment.1382 = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement.1376 = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement.1376*, %struct.EncodingEnvironment.1382*)* }
%struct.MotionInfoContexts.1379 = type { [3 x [11 x %struct.BiContextType.1383]], [2 x [9 x %struct.BiContextType.1383]], [2 x [10 x %struct.BiContextType.1383]], [2 x [6 x %struct.BiContextType.1383]], [4 x %struct.BiContextType.1383], [4 x %struct.BiContextType.1383], [3 x %struct.BiContextType.1383] }
%struct.BiContextType.1383 = type { i16, i8, i32 }
%struct.TextureInfoContexts.1380 = type { [2 x %struct.BiContextType.1383], [4 x %struct.BiContextType.1383], [3 x [4 x %struct.BiContextType.1383]], [10 x [4 x %struct.BiContextType.1383]], [10 x [15 x %struct.BiContextType.1383]], [10 x [15 x %struct.BiContextType.1383]], [10 x [5 x %struct.BiContextType.1383]], [10 x [5 x %struct.BiContextType.1383]], [10 x [15 x %struct.BiContextType.1383]], [10 x [15 x %struct.BiContextType.1383]] }
%struct.RMPNIbuffer_s.1381 = type { i32, i32, %struct.RMPNIbuffer_s.1381* }
%struct.macroblock.1375 = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock.1375*, %struct.macroblock.1375*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s.1377 = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s.1377* }
%struct.randomaccess_information_struct.1391 = type { i8, i8, i8, %struct.Bitstream.1370*, i32 }

@img = external global %struct.ImageParameters.1372*, align 4
@seiHasRandomAccess_info = external global i32, align 4
@seiRandomAccess = external global %struct.randomaccess_information_struct.1391, align 4

; Function Attrs: norecurse nounwind
define void @UpdateRandomAccess() #0 {
  %1 = load %struct.ImageParameters.1372*, %struct.ImageParameters.1372** @img, align 4
  %2 = getelementptr inbounds %struct.ImageParameters.1372, %struct.ImageParameters.1372* %1, i32 0, i32 6
  %3 = load i32, i32* %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct.1391, %struct.randomaccess_information_struct.1391* @seiRandomAccess, i32 0, i32 0), align 4
  store i8 1, i8* getelementptr inbounds (%struct.randomaccess_information_struct.1391, %struct.randomaccess_information_struct.1391* @seiRandomAccess, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.randomaccess_information_struct.1391, %struct.randomaccess_information_struct.1391* @seiRandomAccess, i32 0, i32 2), align 2
  br label %6

; <label>:6                                       ; preds = %5, %0
  %storemerge = phi i32 [ 1, %5 ], [ 0, %0 ]
  store i32 %storemerge, i32* @seiHasRandomAccess_info, align 4
  ret void
}

attributes #0 = { norecurse nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+mips32r2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git 2d49f0a0ae8366964a93e3b7b26e29679bee7160) (http://llvm.org/git/llvm.git 60bc66b44837125843b58ed3e0fd2e6bb948d839)"}
