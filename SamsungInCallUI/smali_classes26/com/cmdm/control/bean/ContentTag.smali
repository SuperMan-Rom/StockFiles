.class public Lcom/cmdm/control/bean/ContentTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentTag"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b09e2399ab57f48L


# instance fields
.field public tagId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "tagId"
    .end annotation
.end field

.field public tagName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "tagName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentTag;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public setTagId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagId"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentTag;->tagId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentTag;->tagName:Ljava/lang/String;

    .line 26
    return-void
.end method
