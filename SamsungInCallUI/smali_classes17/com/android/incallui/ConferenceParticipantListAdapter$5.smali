.class Lcom/android/incallui/ConferenceParticipantListAdapter$5;
.super Ljava/lang/Object;
.source "ConferenceParticipantListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceParticipantListAdapter;->sortParticipantList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceParticipantListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ConferenceParticipantListAdapter;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/incallui/ConferenceParticipantListAdapter$5;->this$0:Lcom/android/incallui/ConferenceParticipantListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I
    .locals 5
    .param p1, "p1"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;
    .param p2, "p2"    # Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    .prologue
    .line 795
    invoke-virtual {p1}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 796
    .local v0, "first":I
    invoke-virtual {p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;->getCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^0-9]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    .local v1, "second":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 793
    check-cast p1, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    check-cast p2, Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/ConferenceParticipantListAdapter$5;->compare(Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;Lcom/android/incallui/ConferenceParticipantListAdapter$ParticipantInfo;)I

    move-result v0

    return v0
.end method
