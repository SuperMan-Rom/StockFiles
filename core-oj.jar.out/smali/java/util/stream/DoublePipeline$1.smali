.class Ljava/util/stream/DoublePipeline$1;
.super Ljava/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline;->map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/DoublePipeline$StatelessOp",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/stream/DoublePipeline;

.field final synthetic val$mapper:Ljava/util/function/DoubleUnaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/DoublePipeline;Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;ILjava/util/function/DoubleUnaryOperator;)V
    .locals 0
    .param p3, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p4, "$anonymous2"    # I
    .param p5, "val$mapper"    # Ljava/util/function/DoubleUnaryOperator;

    .prologue
    .line 191
    .local p1, "this$0":Ljava/util/stream/DoublePipeline;, "Ljava/util/stream/DoublePipeline<TE_IN;>;"
    .local p2, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$1;->this$0:Ljava/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava/util/stream/DoublePipeline$1;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 192
    return-void
.end method


# virtual methods
.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/util/stream/DoublePipeline$1$1;

    iget-object v1, p0, Ljava/util/stream/DoublePipeline$1;->val$mapper:Ljava/util/function/DoubleUnaryOperator;

    invoke-direct {v0, p0, p2, v1}, Ljava/util/stream/DoublePipeline$1$1;-><init>(Ljava/util/stream/DoublePipeline$1;Ljava/util/stream/Sink;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method
