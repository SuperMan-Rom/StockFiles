.class final synthetic Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$-lambdaCtx:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "arg0"    # J

    .prologue
    iget-object v0, p0, Ljava/util/PrimitiveIterator$OfLong$-void_forEachRemaining_java_util_function_Consumer_action_LambdaImpl0;->val$-lambdaCtx:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Ljava/util/PrimitiveIterator$OfLong;->-java_util_PrimitiveIterator$OfLong-mthref-0(Ljava/util/function/Consumer;J)V

    return-void
.end method
