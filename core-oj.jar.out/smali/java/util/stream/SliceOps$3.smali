.class final Ljava/util/stream/SliceOps$3;
.super Ljava/util/stream/LongPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/SliceOps;->makeLong(Ljava/util/stream/AbstractPipeline;JJ)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/SliceOps$3$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/LongPipeline$StatefulOp",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method static synthetic -java_util_stream_SliceOps$3-mthref-0(I)[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 372
    new-array v0, p0, [Ljava/lang/Long;

    return-object v0
.end method

.method constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;IJJ)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/util/stream/StreamShape;
    .param p3, "$anonymous2"    # I
    .param p4, "val$skip"    # J
    .param p6, "val$limit"    # J

    .prologue
    .line 344
    .local p1, "$anonymous0":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    iput-wide p4, p0, Ljava/util/stream/SliceOps$3;->val$skip:J

    iput-wide p6, p0, Ljava/util/stream/SliceOps$3;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline$StatefulOp;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V

    .line 345
    return-void
.end method


# virtual methods
.method public opEvaluateParallel(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;",
            "Ljava/util/function/IntFunction",
            "<[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Node",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v8

    .line 382
    .local v8, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    const/16 v2, 0x4000

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getSourceShape()Ljava/util/stream/StreamShape;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Ljava/util/stream/SliceOps;->-wrap0(Ljava/util/stream/StreamShape;Ljava/util/Spliterator;JJ)Ljava/util/Spliterator;

    move-result-object v20

    .line 389
    .local v20, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v2

    return-object v2

    .line 390
    .end local v20    # "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    :cond_0
    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v3

    check-cast v3, Ljava/util/Spliterator$OfLong;

    .line 393
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v2, p0

    .line 391
    invoke-virtual/range {v2 .. v9}, Ljava/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;

    move-result-object v10

    .line 398
    .local v10, "s":Ljava/util/Spliterator$OfLong;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v2}, Ljava/util/stream/Nodes;->collectLong(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)Ljava/util/stream/Node$OfLong;

    move-result-object v2

    return-object v2

    .line 401
    .end local v10    # "s":Ljava/util/Spliterator$OfLong;
    :cond_1
    new-instance v11, Ljava/util/stream/SliceOps$SliceTask;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v11 .. v19}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    return-object v2
.end method

.method public opEvaluateParallelLazy(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, "helper":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava/util/Spliterator;)J

    move-result-wide v8

    .line 361
    .local v8, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    const/16 v2, 0x4000

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v2, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    .line 363
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v3

    check-cast v3, Ljava/util/Spliterator$OfLong;

    .line 364
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    .line 365
    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    invoke-static {v6, v7, v10, v11}, Ljava/util/stream/SliceOps;->-wrap3(JJ)J

    move-result-wide v6

    .line 362
    invoke-direct/range {v2 .. v7}, Ljava/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v2

    .line 366
    :cond_0
    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    invoke-virtual/range {p1 .. p2}, Ljava/util/stream/PipelineHelper;->wrapSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v3

    check-cast v3, Ljava/util/Spliterator$OfLong;

    .line 369
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object/from16 v2, p0

    .line 367
    invoke-virtual/range {v2 .. v9}, Ljava/util/stream/SliceOps$3;->unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;

    move-result-object v2

    return-object v2

    .line 372
    :cond_1
    new-instance v11, Ljava/util/stream/SliceOps$SliceTask;

    new-instance v15, Ljava/util/stream/SliceOps$3$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;

    invoke-direct {v15}, Ljava/util/stream/SliceOps$3$-java_util_Spliterator_opEvaluateParallelLazy_java_util_stream_PipelineHelper_helper_java_util_Spliterator_spliterator_LambdaImpl0;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$skip:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v11 .. v19}, Ljava/util/stream/SliceOps$SliceTask;-><init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v11}, Ljava/util/concurrent/ForkJoinTask;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Node;

    invoke-interface {v2}, Ljava/util/stream/Node;->spliterator()Ljava/util/Spliterator;

    move-result-object v2

    return-object v2
.end method

.method public opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .locals 8
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/stream/SliceOps$3$1;

    iget-wide v4, p0, Ljava/util/stream/SliceOps$3;->val$skip:J

    iget-wide v6, p0, Ljava/util/stream/SliceOps$3;->val$limit:J

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/stream/SliceOps$3$1;-><init>(Ljava/util/stream/SliceOps$3;Ljava/util/stream/Sink;JJ)V

    return-object v1
.end method

.method unorderedSkipLimitSpliterator(Ljava/util/Spliterator$OfLong;JJJ)Ljava/util/Spliterator$OfLong;
    .locals 6
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .param p6, "sizeIfKnown"    # J

    .prologue
    .line 348
    cmp-long v0, p2, p6

    if-gtz v0, :cond_0

    .line 351
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    sub-long v0, p6, p2

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 352
    :goto_0
    const-wide/16 p2, 0x0

    .line 354
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;JJ)V

    return-object v0

    .line 351
    :cond_1
    sub-long p4, p6, p2

    goto :goto_0
.end method
