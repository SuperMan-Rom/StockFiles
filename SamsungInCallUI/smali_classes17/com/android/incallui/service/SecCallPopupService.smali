.class public Lcom/android/incallui/service/SecCallPopupService;
.super Lcom/android/incallui/service/HeadUpNotificationService;
.source "SecCallPopupService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/service/HeadUpNotificationService;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
        "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_MUTE_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

.field private static final ACTION_HOME_PRESSED:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field public static final ACTION_INCALL_FULL_SCREEN:Ljava/lang/String; = "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

.field private static final ACTION_STK_TGROUPON_NOTIFY:Ljava/lang/String; = "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

.field private static final CALLCONTENT_LOADER:I = 0x1

.field protected static final CALL_END_TIME_BLINK_MSG:I = 0x69

.field public static final CATEGORY_ISH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

.field public static final CATEGORY_VSH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

.field private static final DCM_APP_URI:Landroid/net/Uri;

.field static final EVENT_ANIMATE_HIDE:I = 0x6b

.field static final EVENT_ANIMATE_HIDE_DELAY:I = 0x190

.field static final EVENT_ANSWER_TIMEOUT:I = 0x6c

.field static final EVENT_ANSWER_TIMEOUT_DELAY:I = 0x1388

.field static final EVENT_CHECK_KEYGUARD:I = 0x67

.field static final EVENT_DISCONNECTED_TIMEOUT:I = 0x65

.field static final EVENT_UPDATE_SMART_CALL_LAYOUT:I = 0x78

.field public static final EXTRA_SHARE_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_SHARE_TYPE:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

.field protected static final LOG_TAG:Ljava/lang/String; = "SecCallPopupService"

.field static final PLAY_AUTO_ANSWER_MESSAGE:I = 0xa5

.field static final PLAY_AUTO_ANSWER_MESSAGE_DELAY:I = 0x3e8

.field public static final RCS_CSH_ACCEPT:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

.field public static final RCS_POPUP_DIALOG:Ljava/lang/String; = "com.samsung.android.incalllui.secservice.action.ACTION_RCS_POP_UP"

.field public static final SHARE_ISH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

.field public static final SHARE_VSH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"


# instance fields
.field private cityInformation:Ljava/lang/String;

.field mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field mCursorLoader:Landroid/content/CursorLoader;

.field private mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

.field mHandler:Landroid/os/Handler;

.field private mHideStatusObserver:Landroid/database/ContentObserver;

.field private mIsFinishing:Z

.field private mIsLandScape:Z

.field public mPrevOrientation:I

.field public mPrevState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

.field private mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

.field private mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

.field private mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "content://"

    const-string v1, "com.nttdocomo.android.phonemotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "hide_name_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;-><init>()V

    .line 136
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    .line 137
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    .line 139
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->cityInformation:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    .line 152
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 160
    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$1;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/SecCallPopupService$2;-><init>(Lcom/android/incallui/service/SecCallPopupService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    .line 972
    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    .line 1212
    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$7;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupService;->handleEventScreenOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/service/SecCallPopupService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->getHideStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupWaitingCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/service/SecCallPopupService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/service/SecCallPopupService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/SecCallPopupService;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    return p1
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1168
    if-nez p2, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1170
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1171
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1174
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getHideStatus()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 196
    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 199
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTT DOCOMO : getHideStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    .line 210
    :goto_1
    if-eqz v6, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 216
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_2
    return v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    move v0, v9

    .line 203
    goto :goto_0

    :cond_2
    move v0, v9

    .line 204
    goto :goto_1

    .line 210
    :cond_3
    if-eqz v6, :cond_4

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_3
    move v0, v9

    .line 216
    goto :goto_2

    .line 207
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 208
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTT DOCOMO : getHideStatus Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v6, :cond_4

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 210
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private handleEventScreenOff(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1053
    const-string v1, "why"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1054
    .local v0, "why":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    sget v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    if-eq v0, v1, :cond_0

    .line 1056
    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_0

    .line 1057
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 1058
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 1059
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 1062
    :cond_0
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 309
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 310
    .local v2, "config":Landroid/content/res/Configuration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 311
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 312
    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    .line 314
    :cond_0
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    .line 316
    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    new-instance v5, Lcom/android/incallui/service/SecCallPopupService$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/service/SecCallPopupService$3;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    .line 328
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 329
    .local v1, "calls":Lcom/android/incallui/CallList;
    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 330
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 331
    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    .line 332
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 331
    :cond_2
    invoke-static {v5, v0, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 334
    const-string v3, "roaming_enhancement"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    .line 338
    :cond_3
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    .line 340
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v0, v3, v5, v6}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    .line 346
    :cond_4
    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_5

    .line 347
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->getHideStatus()Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    .line 348
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v3, :cond_5

    .line 349
    const-string v3, "NTT DOCOMO : registerContentObserver "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    :cond_5
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1130
    const-string v0, "SecCallPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 1134
    const-string v0, "SecCallPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1135
    return-void
.end method

.method private updateCallPlusInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 975
    const-string v0, "updateCallPlusInfo: "

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 976
    const/4 v7, 0x0

    .line 977
    .local v7, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    .line 980
    :cond_0
    const/4 v8, 0x0

    .line 981
    .local v8, "number":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 982
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 984
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 985
    const/4 v2, 0x0

    .line 986
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 987
    sget-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 988
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    .line 993
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v9, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 994
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling CursorLoader number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 999
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-void

    .line 990
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_3
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 991
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    goto :goto_0
.end method

.method private updateWakeLockState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Acquire"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method


# virtual methods
.method public animateForHide()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->isHideAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const-string v0, "animateForHide - isHideAnimationRunning"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->animateForHide()V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 2

    .prologue
    .line 1184
    const-string v0, "answeringMode()..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->answeringMode()V

    .line 1187
    :cond_0
    return-void
.end method

.method checkKeyguardLocked()V
    .locals 2

    .prologue
    .line 1065
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1066
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    const-string v1, "isKeyguardLocked"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_0

    .line 1069
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 1070
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 1071
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 1074
    :cond_0
    return-void
.end method

.method public clearAmViews()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->clearAmViews()V

    .line 1202
    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 528
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 529
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    .line 531
    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    if-eqz v1, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 541
    :goto_1
    return-object v0

    .line 530
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 535
    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 539
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 1206
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1138
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1140
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1146
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1144
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method endCallClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 841
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 843
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v1, "popup service : endCallClicked()"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 844
    if-eqz v0, :cond_0

    .line 845
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 847
    :cond_0
    return-void
.end method

.method public getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method protected launchFullScreen()V
    .locals 1

    .prologue
    .line 1036
    const-string v0, "launchFullScreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_MaximizeToFullScreen()V

    .line 1038
    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$6;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    .line 1050
    return-void
.end method

.method messageClicked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x10000000

    .line 905
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 906
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 907
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 908
    .local v0, "checkIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 909
    .local v2, "msisdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 910
    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*77"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 914
    :cond_0
    invoke-static {v2}, Lcom/android/incallui/service/ui/JanskyPopupUI;->getLineMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 917
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 929
    .end local v0    # "checkIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msisdn":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 922
    .restart local v0    # "checkIntent":Landroid/content/Intent;
    .restart local v2    # "msisdn":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 923
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.popupuireceiver"

    const-string v5, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    const-string v4, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 926
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAnswerWithWaitingCheck()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 791
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 792
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    const-string v1, "SecCallPopupService"

    const-string v2, "onAnswerWithWaitingCheck : Answering machine mIsPopupShowing = true"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsPopupShowing:Z

    .line 799
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswerWithWaitingCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    new-instance v1, Lcom/android/incallui/service/SecCallPopupService$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/SecCallPopupService$5;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1084
    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 716
    if-nez p1, :cond_1

    .line 717
    const-string v0, "call is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 722
    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v0, :cond_3

    .line 723
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 724
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 728
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 730
    :cond_3
    const-string v0, "SecCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 734
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 739
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 773
    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 562
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 563
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getWaitingDialg()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 571
    const-string v1, "onConfigurationChanged - waitingCallDialog showing... return"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 585
    :goto_0
    return-void

    .line 574
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_4

    .line 575
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    .line 579
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    .line 581
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_3

    .line 582
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 584
    :cond_3
    invoke-super {p0, p1}, Lcom/android/incallui/service/HeadUpNotificationService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 577
    :cond_4
    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    goto :goto_1
.end method

.method public onCoverStateChanged(Z)V
    .locals 1
    .param p1, "isClosed"    # Z

    .prologue
    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v0, :cond_0

    .line 1096
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 1097
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 1098
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 1101
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 230
    const-string v2, "onCreate "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 232
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCreate()V

    .line 234
    iput-object p0, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    .line 235
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 237
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/wrapper/TypefaceWrapper;->setAppTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    .line 240
    new-instance v2, Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    .line 242
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 243
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 244
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 245
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    .line 247
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 249
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    .line 251
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 252
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 253
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    .line 256
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    .line 257
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    invoke-virtual {v2}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->collapsePanels()V

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 263
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v2, "support_tgroupon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const-string v2, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    :cond_1
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    const-string v2, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v2, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 276
    const-string v2, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 279
    :cond_2
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 280
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 286
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->init()V

    .line 288
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_6

    .line 292
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 293
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0xa

    const-string v3, "SecCallPopupService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    const-string v2, "onCreate : InCallActivity isActivityStarted "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 298
    iget-boolean v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v2, :cond_7

    .line 299
    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 304
    :cond_7
    const-string v2, "mini"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 551
    const-string v1, "onCreateCustomView"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 554
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0400a0

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/service/SecCallPopupContainer;

    iput-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    .line 555
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/SecCallPopupContainer;->setSecCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    .line 556
    return-void
.end method

.method protected onCustomCreate()V
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 518
    .local v0, "isTalkBackEnabled":Z
    if-eqz v0, :cond_0

    .line 520
    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/android/incallui/service/HeadUpNotificationService;->onFocus(Z)V

    .line 522
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 417
    const-string v1, "onDestroy "

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 419
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    .line 426
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 427
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v1, :cond_1

    .line 431
    const-string v1, "requestStatusBarOpen"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    invoke-virtual {v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->requestStatusBarOpen()V

    .line 436
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 437
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 438
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 439
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    .line 441
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 443
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/incallui/InCallPresenter;->setBlockToUpdateNotification(Z)V

    .line 444
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    .line 446
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 447
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 448
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    .line 449
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iput-object v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 455
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->stopGradientAnimation()V

    .line 457
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->clearViews()V

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 462
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    .line 463
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 467
    const-string v1, "SecCallPopupService"

    const-string v2, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 469
    iput-object v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 472
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v1, :cond_6

    .line 473
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->clear(Lcom/android/incallui/Call;)V

    .line 476
    :cond_6
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 477
    const-string v1, "onDestroy : isCoverClosed InCallActivity start"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 478
    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_7

    .line 479
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 480
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 481
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 485
    :cond_7
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 487
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_9

    .line 488
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 489
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->cancelLoad()Z

    .line 490
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    .line 494
    :cond_9
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy :  isSmartAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 497
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 498
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 499
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_a

    .line 500
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 501
    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 504
    :cond_a
    const-string v1, "hide"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    .line 506
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_b

    .line 507
    const-string v1, "NTT DOCOMO : unregisterContentObserver "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 511
    :cond_b
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onDestroy()V

    .line 512
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/util/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    .line 1117
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 1119
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getJanskyPopupUI()Lcom/android/incallui/service/ui/JanskyPopupUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->updateJanskyinfo()V

    .line 1121
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    if-lez v0, :cond_0

    .line 779
    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    .line 780
    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    if-nez v0, :cond_0

    .line 781
    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    .line 782
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer(Landroid/content/Context;I)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 788
    :cond_1
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 1111
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 767
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 761
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/service/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 764
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x1

    .line 1004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onLoadComplete data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1005
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 1006
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1008
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished CALLCONTENT_LOADER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1009
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallPlusPopupUI()Lcom/android/incallui/service/ui/CallPlusPopupUI;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/service/SecCallPopupService;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 1090
    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 1127
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 0
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 746
    return-void
.end method

.method protected onShowPopup()V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 408
    .local v0, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 409
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->startGradientAnimation()V

    .line 413
    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 1107
    return-void
.end method

.method public onSmartImageQueryComplete()V
    .locals 2

    .prologue
    .line 1158
    const-string v0, "onSmartImageQueryComplete - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1160
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    .prologue
    .line 1151
    const-string v0, "onSmartInfoQueryComplete - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1154
    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    .prologue
    .line 1165
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 10
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/16 v7, 0x65

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 605
    const/4 v3, 0x0

    invoke-static {p3, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 606
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 607
    const-string v3, "call is null"

    invoke-direct {p0, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 608
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_4

    .line 615
    iget-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v3, :cond_3

    .line 616
    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    .line 617
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6c

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    .line 623
    :cond_3
    const-string v3, "SecCallPopupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 627
    :cond_4
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_5

    .line 629
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->checkAndStartAnswerMemo()V

    .line 632
    :cond_5
    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 633
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_15

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mCanSlideOut:Z

    .line 635
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_16

    move v2, v4

    .line 637
    .local v2, "isDisconnected":Z
    :goto_2
    if-nez v2, :cond_7

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange - isDisconnected : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 639
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 640
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    .line 643
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_17

    move v3, v4

    .line 642
    :goto_3
    invoke-static {v6, v0, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    .line 646
    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 647
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    .line 648
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v0, v3, v6, v7}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    .line 654
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_8

    .line 655
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v3, v0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 656
    :cond_8
    const-string v3, "ims_callplus"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ims_crane"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 657
    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->updateCallPlusInfo()V

    .line 659
    :cond_a
    const/4 v1, 0x0

    .line 660
    .local v1, "isAutoAnswered":Z
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_b

    .line 661
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->isAutoAnswered()Z

    move-result v1

    .line 664
    :cond_b
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_c

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_c

    .line 665
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    .line 667
    :cond_c
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_d

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_d

    if-eqz v1, :cond_0

    .line 672
    :cond_d
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_e

    .line 673
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 676
    :cond_e
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_f

    .line 677
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3, p1, p2, p3, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    .line 679
    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/service/SecCallPopupService;->updateWakeLockState(I)V

    .line 681
    iget v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_10

    .line 682
    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0903c5

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_10
    iget v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    if-eq v3, v8, :cond_11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_11

    .line 685
    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f09038b

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :cond_11
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v8, :cond_12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_13

    .line 690
    :cond_12
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 694
    :cond_13
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    .line 696
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_14

    .line 697
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->disconnected()V

    .line 701
    :cond_14
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange :  isSmartAnswered - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 704
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 705
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 706
    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    goto/16 :goto_0

    .end local v1    # "isAutoAnswered":Z
    .end local v2    # "isDisconnected":Z
    :cond_15
    move v3, v5

    .line 633
    goto/16 :goto_1

    :cond_16
    move v2, v5

    .line 635
    goto/16 :goto_2

    .restart local v2    # "isDisconnected":Z
    :cond_17
    move v3, v5

    .line 643
    goto/16 :goto_3
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 1078
    return-void
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    .prologue
    .line 962
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 964
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 965
    const-string v1, "call is null"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 770
    return-void
.end method

.method rejectCallClicked()V
    .locals 6

    .prologue
    .line 821
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 822
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 824
    .local v0, "call":Lcom/android/incallui/Call;
    const-string v2, "popup service : rejectCallClicked()"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    .line 825
    if-eqz v0, :cond_0

    .line 826
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 828
    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    .line 829
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 832
    :cond_1
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_att"

    .line 833
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 834
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_2

    .line 835
    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    .line 838
    :cond_2
    return-void
.end method

.method protected removeHeadUpNotification()V
    .locals 0

    .prologue
    .line 546
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->removeHeadUpNotification()V

    .line 547
    return-void
.end method

.method public setAMView(Z)V
    .locals 2
    .param p1, "isRecording"    # Z

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->setAMView(Z)V

    .line 1197
    :cond_0
    return-void
.end method

.method showInCallUI()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 932
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 958
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 937
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 938
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 941
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    if-eqz v2, :cond_3

    .line 942
    const-string v3, "fromPopup"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_2

    .line 945
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3, v2}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->setElapsedAMTimetoIntent(Landroid/content/Intent;)V

    .line 947
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 948
    const-string v3, "startActivity with Bundle"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 949
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :cond_3
    :goto_1
    const-string v3, "SecCallPopupService"

    const-string v4, "showInCallUI"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 951
    :cond_4
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 366
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 367
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 368
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 369
    .local v1, "isIncoming":Z
    :goto_0
    new-instance v2, Lcom/android/incallui/service/SecCallPopupService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/service/SecCallPopupService$4;-><init>(Lcom/android/incallui/service/SecCallPopupService;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 401
    return-void

    .line 368
    .end local v1    # "isIncoming":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecord()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->startRecord()V

    .line 358
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->stopRecord()V

    .line 363
    :cond_0
    return-void
.end method

.method toggleMute(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleMute() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleMute() sendMuteButtonStatus()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 870
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 871
    return-void
.end method

.method public toggleRejectMsgContent()V
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->isShowingRejectMsgContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    .line 1192
    :cond_0
    return-void
.end method

.method toggleSpeaker(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 850
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    const v1, 0x7f0901f3

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    .line 859
    :goto_0
    return-void

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 856
    .local v0, "newMode":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleSpeaker() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    .line 857
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_0

    .line 855
    .end local v0    # "newMode":I
    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public updateAnswerMemoRecordTime()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateAnswerMemoRecordTime()V

    .line 1181
    :cond_0
    return-void
.end method

.method videoCallClicked()V
    .locals 5

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 893
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 894
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "videocall"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 895
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 896
    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "twophone"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    invoke-static {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/os/Bundle;)V

    .line 900
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 902
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_1
    return-void

    .line 896
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    const-string v3, "onephone"

    goto :goto_0
.end method

.method voiceCallClicked()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 874
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 876
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 877
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    .line 880
    .local v2, "tm":Landroid/telecom/TelecomManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 881
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 882
    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "twophone"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/os/Bundle;)V

    .line 885
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 887
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_2
    return-void

    .line 882
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_3
    const-string v3, "onephone"

    goto :goto_0
.end method
