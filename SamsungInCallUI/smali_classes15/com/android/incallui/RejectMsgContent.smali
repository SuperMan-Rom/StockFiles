.class public Lcom/android/incallui/RejectMsgContent;
.super Lcom/android/incallui/BaseRejectMsgContent;
.source "RejectMsgContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field private mCreateMessageLayout:Landroid/view/View;

.field private mCreateMsgStub:Landroid/view/ViewStub;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040087

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureRejectMsgList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    .line 113
    .local v1, "isShowCreateButton":Z
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 118
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const/4 v1, 0x0

    .line 122
    :cond_1
    const-string v3, "show_reminder_button"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.samsung.android.app.reminder"

    .line 123
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 124
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    .line 129
    :goto_0
    if-nez p1, :cond_6

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mTextResponses:Ljava/util/List;

    .line 135
    :goto_1
    new-instance v3, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContent;->mContext:Landroid/content/Context;

    const v5, 0x7f040089

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContent;->mTextResponses:Ljava/util/List;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 136
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v4, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v4, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    :cond_2
    if-nez v1, :cond_3

    .line 143
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContent;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 146
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 147
    .local v0, "calls":Lcom/android/incallui/CallList;
    if-nez v0, :cond_7

    .line 163
    :cond_4
    :goto_2
    return-void

    .line 126
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :cond_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 132
    :cond_6
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContent;->mTextResponses:Ljava/util/List;

    goto :goto_1

    .line 149
    .restart local v0    # "calls":Lcom/android/incallui/CallList;
    :cond_7
    const/4 v2, 0x0

    .line 150
    .local v2, "isVoicePartyCall":Z
    const-string v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 151
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 153
    :cond_8
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_4

    .line 154
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_9

    .line 155
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_9

    .line 156
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_9

    .line 157
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_9

    .line 158
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_4

    .line 160
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2
.end method

.method public getReminderCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    .line 60
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040101

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mCreateMessageLayout:Landroid/view/View;

    .line 62
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContent;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 63
    const v3, 0x7f100349

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    .line 64
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/incallui/RejectMsgContent$1;

    invoke-direct {v4, p0}, Lcom/android/incallui/RejectMsgContent$1;-><init>(Lcom/android/incallui/RejectMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 75
    .local v0, "calls":Lcom/android/incallui/CallList;
    const/4 v2, 0x0

    .line 76
    .local v2, "isVoicePartyCall":Z
    const-string v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 103
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    .end local v2    # "isVoicePartyCall":Z
    :cond_1
    :goto_0
    return-void

    .line 87
    .restart local v0    # "calls":Lcom/android/incallui/CallList;
    .restart local v2    # "isVoicePartyCall":Z
    :cond_2
    const v3, 0x7f1001ac

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    .line 88
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 89
    :cond_3
    const v3, 0x7f1001e7

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 90
    const v3, 0x7f1001e8

    invoke-virtual {p0, v3}, Lcom/android/incallui/RejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 91
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoImg:Landroid/widget/ImageView;

    const v4, 0x7f020051

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContent;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/incallui/RejectMsgContent$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/RejectMsgContent$2;-><init>(Lcom/android/incallui/RejectMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContent$OnAnswerMemoClickListener;

    .line 167
    return-void
.end method