.class Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;
.super Ljava/util/ArrayList;
.source "OrderRetainingMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArraySet"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$1;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap$ArraySet;-><init>()V

    return-void
.end method
