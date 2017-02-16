.class public Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;
.super Lcom/android/incallui/fragment/manager/BaseFragmentManager;
.source "CallButtonFragmentManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ConfigurationListener;
.implements Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/fragment/manager/BaseFragmentManager",
        "<",
        "Lcom/android/incallui/fragment/CallButtonFragment;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$ConfigurationListener;",
        "Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;"
    }
.end annotation


# static fields
.field private static final IVR_FORMAT:Ljava/lang/String; = "xml"

.field protected static final LOG_TAG:Ljava/lang/String; = "CallButtonFragmentManager"

.field private static final SHOW_AM_VIEW:I = 0x96

.field private static final SHOW_AM_VIEW_DELAY:I = 0x1f4


# instance fields
.field mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

.field private mHandler:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mIsBGCall:Z

.field private mIsBGCallChanged:Z

.field private mIsCallPlus:Z

.field public mIsHasIVR:Z

.field private mIsInit:Z

.field public mIsOutGoingCall:Z


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 78
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    .line 99
    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$1;-><init>(Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mHandler:Landroid/os/Handler;

    .line 119
    const-string v0, "CallButtonFragmentManager..."

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 121
    const-string v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasOutgoingCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    .line 123
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mHasIVR:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 127
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListenerToFirst(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 128
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 129
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 130
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 133
    :cond_2
    return-void
.end method

.method private getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;
    .locals 7
    .param p1, "mode"    # Ljava/lang/Enum;

    .prologue
    const/4 v6, 0x1

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "setFragment":Landroid/app/Fragment;
    const-string v3, "CallButtonFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFragment mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$2;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    check-cast p1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .end local p1    # "mode":Ljava/lang/Enum;
    invoke-virtual {p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-object v2

    .line 384
    :pswitch_0
    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonFragment() "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VoiceCallButtonFragment;-><init>()V

    .line 386
    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 388
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 389
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 390
    .local v1, "isVideoState":Z
    const-string v3, "CallButtonFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFragment isVideoCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 391
    if-nez v1, :cond_0

    .line 392
    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonCallPlusFragment() "

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    new-instance v2, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 397
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "isVideoState":Z
    :pswitch_2
    const-string v3, "CallButtonFragmentManager"

    const-string v4, "new VoiceCallButtonVCCFragment() "

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v2, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/visualcallcenter/VoiceCallButtonVCCFragment;-><init>()V

    .line 399
    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 401
    :pswitch_3
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonQCIFFragment;-><init>()V

    .line 402
    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 404
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isGloblaUX()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 406
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAKorFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 408
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAUsaFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto :goto_0

    .line 410
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 411
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAJpnFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 412
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isChnUX()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAChnFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAChnFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 415
    :cond_5
    new-instance v2, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/VideoCallButtonVGAGlobalFragment;-><init>()V

    .line 417
    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 419
    :pswitch_5
    iget v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    .line 422
    :cond_6
    new-instance v2, Lcom/android/incallui/fragment/EndCallButtonFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;-><init>()V

    .line 423
    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 425
    :pswitch_6
    new-instance v2, Lcom/android/incallui/fragment/CallButtonEmptyFragment;

    .end local v2    # "setFragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/android/incallui/fragment/CallButtonEmptyFragment;-><init>()V

    .restart local v2    # "setFragment":Landroid/app/Fragment;
    goto/16 :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 187
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange : isAutoAnswered - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->setCallButtonContainerVisibility(Z)V

    .line 192
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x96

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic checkAndSet(Z)Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method protected checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 11
    .param p1, "forceUpdate"    # Z

    .prologue
    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 201
    iget-object v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v8}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-object v6

    .line 205
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInCallState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const-string v8, "visual_call_center_callerid_info"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "smart_ivr_callerid_info"

    .line 207
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 208
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasOutgoingCall()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 209
    iput-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    .line 217
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    .line 219
    iput-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto :goto_0

    .line 210
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v9, :cond_6

    .line 211
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v9, :cond_6

    .line 212
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 213
    :cond_6
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    goto :goto_1

    .line 223
    :cond_7
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 224
    .local v3, "requestedMode":Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCallToDisplay()Z

    move-result v1

    .line 225
    .local v1, "hasLiveCall":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getCallToDisplay()Lcom/android/incallui/Call;

    move-result-object v0

    .line 226
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 227
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    iget-object v9, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 228
    invoke-virtual {v9}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v9, :cond_8

    .line 229
    const/4 p1, 0x1

    .line 233
    :cond_8
    if-eqz v0, :cond_b

    iget-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    if-eqz v8, :cond_b

    const-string v8, "visual_call_center_callerid_info"

    .line 234
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "smart_ivr_callerid_info"

    .line 235
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 236
    :cond_9
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 237
    iput-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    .line 239
    const-string v8, "have BackgroundCall() "

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    :goto_2
    const-string v8, "smart_ivr_callerid_info"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 250
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createSrinIVRApi(Ljava/lang/String;)V

    .line 260
    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    const-string v9, "xml"

    invoke-static {v8, v9}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    .line 263
    :cond_b
    if-eqz v0, :cond_1d

    .line 264
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    .line 265
    .local v2, "hasVideoState":Z
    if-eqz v2, :cond_17

    .line 266
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v1, :cond_c

    move v4, v7

    .line 267
    .local v4, "showEndCall":Z
    :cond_c
    if-eqz v4, :cond_15

    .line 268
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 269
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v7

    if-nez v7, :cond_d

    .line 270
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 271
    :cond_d
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 309
    .end local v4    # "showEndCall":Z
    :cond_e
    :goto_4
    const-string v7, "support_tphone"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 310
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 311
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_f

    if-nez v1, :cond_10

    .line 312
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v10, :cond_10

    .line 313
    :cond_f
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 318
    :cond_10
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v8, :cond_1e

    .line 319
    sget-object v7, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v3, v7, :cond_1e

    .line 320
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    .line 321
    iput-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    goto/16 :goto_0

    .line 241
    .end local v2    # "hasVideoState":Z
    :cond_11
    iget-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    if-ne v8, v7, :cond_12

    .line 242
    iput-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    .line 246
    :goto_5
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCall:Z

    .line 247
    const-string v8, "no BackgroundCall() "

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 244
    :cond_12
    iput-boolean v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    goto :goto_5

    .line 252
    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v9, :cond_14

    .line 253
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v9, :cond_14

    .line 254
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v8, v9, :cond_14

    iget-boolean v8, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsBGCallChanged:Z

    if-eqz v8, :cond_a

    .line 256
    :cond_14
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/util/VisualCallCenter;->VCC_createYuloreIVRApi(Ljava/lang/String;)V

    .line 257
    const-string v8, "onCreate VCC api:"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 274
    .restart local v2    # "hasVideoState":Z
    .restart local v4    # "showEndCall":Z
    :cond_15
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 275
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v5

    .line 276
    .local v5, "videoResolution":I
    if-ne v5, v7, :cond_16

    .line 277
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 279
    :cond_16
    iget-object v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v3, v7, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 280
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->removeCurrentFragment()V

    goto/16 :goto_4

    .line 283
    .end local v4    # "showEndCall":Z
    .end local v5    # "videoResolution":I
    :cond_17
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    if-ne v8, v10, :cond_1a

    .line 284
    if-nez v1, :cond_19

    .line 285
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 286
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v7

    if-nez v7, :cond_18

    .line 287
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->isNumberExists(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 288
    :cond_18
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    goto/16 :goto_4

    .line 291
    :cond_19
    iget-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    .line 293
    :cond_1a
    const-string v8, "visual_call_center_callerid_info"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string v8, "smart_ivr_callerid_info"

    .line 294
    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 295
    :cond_1b
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "visual_call_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_1c

    iget-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    if-eqz v7, :cond_1c

    .line 297
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 298
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-boolean v7, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsOutGoingCall:Z

    if-eqz v7, :cond_1c

    .line 300
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 301
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 302
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 303
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 304
    const-string v7, "CallButtonFragmentManager"

    const-string v8, "requestedMode = VCC_VOICE "

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 306
    :cond_1c
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    goto/16 :goto_4

    .line 326
    .end local v2    # "hasVideoState":Z
    :cond_1d
    iget-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0

    .line 329
    .restart local v2    # "hasVideoState":Z
    :cond_1e
    iget-boolean v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    if-eqz v6, :cond_1f

    sget-object v6, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-eq v3, v6, :cond_1f

    .line 330
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isVoiceMail()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 331
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    .line 332
    const-string v6, "CallButtonFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestedMode: CALLPLUS_VOICE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_1f
    if-nez p1, :cond_20

    iget-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    if-eq v6, v3, :cond_21

    .line 336
    :cond_20
    const-string v6, "CallButtonFragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestedMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mOrientationType:I

    .line 338
    invoke-virtual {p0, v3, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragment(Ljava/lang/Enum;Z)V

    .line 339
    iput-object v3, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    .line 342
    :cond_21
    iget-object v6, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    goto/16 :goto_0
.end method

.method protected forceUpdateFragment()Z
    .locals 3

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 483
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mFragmentType:Ljava/lang/Enum;

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    if-ne v1, v2, :cond_0

    .line 484
    const-string v1, "CallButtonFragmentManager - force update fragment"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x1

    .line 488
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallToDisplay()Lcom/android/incallui/Call;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 464
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 465
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 466
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 467
    .local v0, "aliveCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 468
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    .end local v0    # "aliveCall":Lcom/android/incallui/Call;
    :cond_0
    :goto_0
    return-object v0

    .line 471
    .restart local v0    # "aliveCall":Lcom/android/incallui/Call;
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-nez v2, :cond_0

    .end local v0    # "aliveCall":Lcom/android/incallui/Call;
    :cond_2
    move-object v0, v1

    .line 477
    goto :goto_0
.end method

.method public bridge synthetic getFragment()Lcom/android/incallui/BaseFragment;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getFragment()Lcom/android/incallui/fragment/CallButtonFragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Lcom/android/incallui/fragment/CallButtonFragment;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    return-object v0
.end method

.method public isHasIVR(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsInit:Z

    if-nez v0, :cond_0

    .line 458
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const-string v0, "xml"

    invoke-static {p1, v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_obtainIVR(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsHasIVR:Z

    return v0
.end method

.method protected makeTestList()V
    .locals 5

    .prologue
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    .line 451
    invoke-static {}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 452
    .local v0, "mode":Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    iget-object v4, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mTestFragmentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "mode":Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 147
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->forceUpdateFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 151
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0}, Lcom/android/incallui/fragment/manager/BaseFragmentManager;->onDestroy()V

    .line 437
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 438
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 439
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeConfigurationListener(Lcom/android/incallui/InCallPresenter$ConfigurationListener;)V

    .line 440
    const-string v0, "support_mobile_keyboard"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeMobileKeyboardListener(Lcom/android/incallui/InCallPresenter$MobileKeyboardListener;)V

    .line 443
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 142
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 143
    return-void
.end method

.method public onMobileKeyboardChanged()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 178
    return-void
.end method

.method public onSMultiWindowOnChanged()V
    .locals 1

    .prologue
    .line 171
    const-string v0, "CallButtonFragmentManager - onSMultiWindowOnChanged"

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->log(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 173
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->postCheckAndSet(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 163
    return-void
.end method

.method public setCallPlusValue(Z)V
    .locals 3
    .param p1, "isCallPlusVal"    # Z

    .prologue
    const/4 v2, 0x1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallPlusValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 182
    iput-boolean p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mIsCallPlus:Z

    .line 183
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->checkAndSet(Z)Lcom/android/incallui/fragment/CallButtonFragment;

    .line 184
    return-void
.end method

.method protected bridge synthetic setCurrentFragment(Lcom/android/incallui/BaseFragment;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V

    return-void
.end method

.method protected setCurrentFragment(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/incallui/fragment/CallButtonFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->mCurrentFragment:Lcom/android/incallui/fragment/CallButtonFragment;

    .line 168
    return-void
.end method

.method protected setFragment(Ljava/lang/Enum;Z)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/Enum;
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 347
    const v0, 0x7f100293

    .line 349
    .local v0, "containerViewId":I
    const/4 v1, 0x0

    .line 351
    .local v1, "setFragment":Landroid/app/Fragment;
    sget-object v3, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$2;->$SwitchMap$com$android$incallui$fragment$manager$CallButtonFragmentManager$FragmentMode:[I

    move-object v2, p1

    check-cast v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 373
    :goto_0
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->setFragmentInternal(ILandroid/app/Fragment;Z)V

    .line 377
    :cond_0
    return-void

    .line 356
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    .line 357
    goto :goto_0

    .line 359
    :pswitch_1
    const-string v2, "visual_call_center_callerid_info"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    const-string v2, "CallButtonFragmentManager"

    const-string v3, "clear Dailpad when end call "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/incallui/util/VisualCallCenter;->VCC_setDisplayDailpad(Z)V

    .line 363
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    .line 364
    goto :goto_0

    .line 367
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;->getDefaultFragment(Ljava/lang/Enum;)Landroid/app/Fragment;

    move-result-object v1

    .line 368
    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
