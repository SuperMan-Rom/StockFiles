.class Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->descendingEntryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

.field final synthetic val$completeRangeItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 804
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound.2;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->val$completeRangeItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 804
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound.2;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->val$completeRangeItr:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 818
    :goto_0
    return-object v1

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->val$completeRangeItr:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 811
    .local v0, "nextRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    # getter for: Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->access$300(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 812
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    # getter for: Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->access$300(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->this$0:Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    # getter for: Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->access$400(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    goto :goto_0

    .line 818
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0
.end method
