.class public Lcom/cmdm/control/bean/CampaignListResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "CampaignListResource"
.end annotation


# instance fields
.field public campaignList:Lcom/cmdm/control/bean/CampaignList;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "campaignList"
    .end annotation
.end field

.field public offset:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "offset"
    .end annotation
.end field

.field public range:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "range"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/cmdm/control/bean/CampaignList;

    invoke-direct {v0}, Lcom/cmdm/control/bean/CampaignList;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/bean/CampaignListResource;->campaignList:Lcom/cmdm/control/bean/CampaignList;

    .line 22
    return-void
.end method


# virtual methods
.method public getCampaignList()Lcom/cmdm/control/bean/CampaignList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignListResource;->campaignList:Lcom/cmdm/control/bean/CampaignList;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignListResource;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmdm/control/bean/CampaignListResource;->range:Ljava/lang/String;

    return-object v0
.end method

.method public setCampaignList(Lcom/cmdm/control/bean/CampaignList;)V
    .locals 0
    .param p1, "campaignList"    # Lcom/cmdm/control/bean/CampaignList;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignListResource;->campaignList:Lcom/cmdm/control/bean/CampaignList;

    .line 33
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignListResource;->offset:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRange(Ljava/lang/String;)V
    .locals 0
    .param p1, "range"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cmdm/control/bean/CampaignListResource;->range:Ljava/lang/String;

    .line 61
    return-void
.end method
