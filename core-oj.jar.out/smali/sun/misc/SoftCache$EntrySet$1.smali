.class Lsun/misc/SoftCache$EntrySet$1;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/SoftCache$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hashIterator:Ljava/util/Iterator;

.field next:Lsun/misc/SoftCache$Entry;

.field final synthetic this$1:Lsun/misc/SoftCache$EntrySet;


# direct methods
.method constructor <init>(Lsun/misc/SoftCache$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lsun/misc/SoftCache$EntrySet;

    .prologue
    .line 396
    iput-object p1, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    iget-object v0, v0, Lsun/misc/SoftCache$EntrySet;->hashEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 396
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    .line 401
    :cond_0
    iget-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    iget-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 403
    .local v0, "ent":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/SoftCache$ValueCell;

    .line 404
    .local v2, "vc":Lsun/misc/SoftCache$ValueCell;
    const/4 v1, 0x0

    .line 405
    .local v1, "v":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1
    new-instance v3, Lsun/misc/SoftCache$Entry;

    iget-object v4, p0, Lsun/misc/SoftCache$EntrySet$1;->this$1:Lsun/misc/SoftCache$EntrySet;

    iget-object v4, v4, Lsun/misc/SoftCache$EntrySet;->this$0:Lsun/misc/SoftCache;

    invoke-direct {v3, v4, v0, v1}, Lsun/misc/SoftCache$Entry;-><init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    iput-object v3, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 410
    const/4 v3, 0x1

    return v3

    .line 412
    .end local v0    # "ent":Ljava/util/Map$Entry;
    .end local v2    # "vc":Lsun/misc/SoftCache$ValueCell;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v1, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lsun/misc/SoftCache$EntrySet$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    :cond_0
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 419
    .local v0, "e":Lsun/misc/SoftCache$Entry;
    iput-object v2, p0, Lsun/misc/SoftCache$EntrySet$1;->next:Lsun/misc/SoftCache$Entry;

    .line 420
    return-object v0

    .line 417
    .end local v0    # "e":Lsun/misc/SoftCache$Entry;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lsun/misc/SoftCache$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 423
    return-void
.end method
