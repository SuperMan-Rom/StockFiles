.class final Ljava/util/stream/Nodes$IntFixedNodeBuilder;
.super Ljava/util/stream/Nodes$IntArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntFixedNodeBuilder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->-assertionsDisabled:Z

    .line 1476
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 1481
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$IntArrayNode;-><init>(J)V

    .line 1482
    sget-boolean v0, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1480
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 1507
    iget v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1508
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    aput p1, v0, v1

    .line 1506
    return-void

    .line 1510
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Accept exceeded fixed size of %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1511
    iget-object v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1510
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 5
    .param p1, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 1497
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1498
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Begin size %d is not equal to fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1499
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1498
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_0
    iput v4, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    .line 1496
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfInt;
    .locals 5

    .prologue
    .line 1487
    iget v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1489
    iget v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1488
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1492
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    .prologue
    .line 1486
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntFixedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 5

    .prologue
    .line 1517
    iget v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1518
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "End size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1519
    iget v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1518
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1516
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1525
    const-string/jumbo v0, "IntFixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1526
    iget-object v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1525
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
