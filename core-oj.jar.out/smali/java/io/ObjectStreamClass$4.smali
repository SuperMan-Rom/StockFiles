.class final Ljava/io/ObjectStreamClass$4;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/ObjectStreamClass$MemberSignature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I
    .locals 2
    .param p1, "ms1"    # Ljava/io/ObjectStreamClass$MemberSignature;
    .param p2, "ms2"    # Ljava/io/ObjectStreamClass$MemberSignature;

    .prologue
    .line 1749
    iget-object v0, p1, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    iget-object v1, p2, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "ms1"    # Ljava/lang/Object;
    .param p2, "ms2"    # Ljava/lang/Object;

    .prologue
    .line 1748
    check-cast p1, Ljava/io/ObjectStreamClass$MemberSignature;

    .end local p1    # "ms1":Ljava/lang/Object;
    check-cast p2, Ljava/io/ObjectStreamClass$MemberSignature;

    .end local p2    # "ms2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/io/ObjectStreamClass$4;->compare(Ljava/io/ObjectStreamClass$MemberSignature;Ljava/io/ObjectStreamClass$MemberSignature;)I

    move-result v0

    return v0
.end method
