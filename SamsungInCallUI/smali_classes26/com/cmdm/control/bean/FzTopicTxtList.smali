.class public Lcom/cmdm/control/bean/FzTopicTxtList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "FzTopicTxtList"
.end annotation


# instance fields
.field public fzTopicTxtList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "fzTopicTxt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/FzTopicTxt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
