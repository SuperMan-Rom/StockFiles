.class Ljava/util/IdentityHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 0

    .prologue
    .line 979
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeySet;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1011
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 1010
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 987
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1014
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    .line 1015
    .local v2, "result":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1016
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1017
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    new-instance v0, Ljava/util/IdentityHashMap$KeyIterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$KeyIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeyIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 990
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v0

    .line 991
    .local v0, "oldSize":I
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const/4 v1, 0x0

    .line 1002
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1003
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1005
    const/4 v1, 0x1

    goto :goto_0

    .line 1008
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 984
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    .line 1052
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1020
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap$KeySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySet;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySet;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v8, 0x0

    .line 1024
    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v0

    .line 1025
    .local v0, "expectedModCount":I
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySet;->size()I

    move-result v3

    .line 1026
    .local v3, "size":I
    array-length v7, p1

    if-ge v7, v3, :cond_0

    .line 1027
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "a":[Ljava/lang/Object;, "[TT;"
    check-cast p1, [Ljava/lang/Object;

    .line 1028
    .restart local p1    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v4

    .line 1029
    .local v4, "tab":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1030
    .local v5, "ti":I
    const/4 v2, 0x0

    .local v2, "si":I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_3

    .line 1032
    aget-object v1, v4, v2

    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 1034
    if-lt v5, v3, :cond_1

    .line 1035
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1037
    :cond_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "ti":I
    .local v6, "ti":I
    invoke-static {v1}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, p1, v5

    move v5, v6

    .line 1030
    .end local v6    # "ti":I
    .restart local v5    # "ti":I
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1041
    .end local v1    # "key":Ljava/lang/Object;
    :cond_3
    if-lt v5, v3, :cond_4

    iget-object v7, p0, Ljava/util/IdentityHashMap$KeySet;->this$0:Ljava/util/IdentityHashMap;

    invoke-static {v7}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v7

    if-eq v0, v7, :cond_5

    .line 1042
    :cond_4
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 1045
    :cond_5
    array-length v7, p1

    if-ge v5, v7, :cond_6

    .line 1046
    aput-object v8, p1, v5

    .line 1048
    :cond_6
    return-object p1
.end method
