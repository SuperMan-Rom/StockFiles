.class Ljava/util/Collections$EmptyListIterator;
.super Ljava/util/Collections$EmptyIterator;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$EmptyIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3512
    new-instance v0, Ljava/util/Collections$EmptyListIterator;

    invoke-direct {v0}, Ljava/util/Collections$EmptyListIterator;-><init>()V

    .line 3511
    sput-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    .line 3507
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3507
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Collections$EmptyIterator;-><init>(Ljava/util/Collections$EmptyIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 3519
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 3514
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 3516
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3515
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 3517
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 3518
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
