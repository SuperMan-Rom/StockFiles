.class public Lcom/cmdm/control/bean/CampaignList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "campaignList"
.end annotation


# instance fields
.field public campaignList:Ljava/util/ArrayList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamImplicit;
        itemFieldName = "campaignInfo"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignInfo;",
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


# virtual methods
.method public getCampaignList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignList;->campaignList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCampaignList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmdm/control/bean/CampaignInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "campaignList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cmdm/control/bean/CampaignInfo;>;"
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignList;->campaignList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method