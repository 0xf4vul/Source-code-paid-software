.class public Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;
    }
.end annotation


# static fields
.field private static final OVERLAY_HIDE_LONG_SAFETY_DELAY_MILLIS:J = 0x1f40L

.field private static final OVERLAY_HIDE_SHORT_DELAY_MILLIS:J = 0x1388L

.field private static final RETURN_TO_APP_DELAY_MILLIS:J = 0x1f4L

.field private static final SERVICE_STOP_LONG_SAFETY_DELAY_MILLIS:J = 0x1f40L

.field private static final SHUTDOWN_TIMEOUT_MILLIS:J = 0x1b58L


# instance fields
.field private advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

.field advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

.field analytics:Lcom/piriform/ccleaner/b/a;

.field private final delayedTaskHandler:Landroid/os/Handler;

.field private overlay:Lcom/piriform/ccleaner/cleaning/advanced/o;

.field settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

.field stepFailureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

.field stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

.field userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Lcom/piriform/ccleaner/cleaning/advanced/q;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->returnToApp(Lcom/piriform/ccleaner/cleaning/advanced/q;)V

    return-void
.end method

.method static synthetic access$100(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)Lcom/piriform/ccleaner/cleaning/advanced/o;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->overlay:Lcom/piriform/ccleaner/cleaning/advanced/o;

    return-object v0
.end method

.method private clickHomeButtonToClearBackPressBehaviour()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->performGlobalAction(I)Z

    .line 128
    return-void
.end method

.method private displayOverlay()V
    .locals 3

    .prologue
    .line 100
    new-instance v2, Lcom/piriform/ccleaner/cleaning/advanced/h;

    const-string/jumbo v0, "window"

    .line 101
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string/jumbo v1, "layout_inflater"

    .line 102
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-direct {v2, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/h;-><init>(Landroid/view/WindowManager;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->overlay:Lcom/piriform/ccleaner/cleaning/advanced/o;

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->overlay:Lcom/piriform/ccleaner/cleaning/advanced/o;

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/o;->show()V

    .line 105
    return-void
.end method

.method private hideOverlayWithDelay(J)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$2;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    return-void
.end method

.method private returnToApp(Lcom/piriform/ccleaner/cleaning/advanced/q;)V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p1}, Lcom/piriform/ccleaner/cleaning/advanced/q;->asBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method private returnToAppWith(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;J)V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 132
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.method private startDelayedShutdownTask()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$4;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$4;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    return-void
.end method

.method private stopServiceWithDelay(J)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$3;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$3;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-virtual {v1, v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 97
    return-void
.end method

.method public onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1f40

    .line 114
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->stopAdvancedCacheCleaning()V

    .line 115
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-virtual {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->trackStopSequence(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 117
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->clickHomeButtonToClearBackPressBehaviour()V

    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->returnToAppWith(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;J)V

    .line 122
    invoke-direct {p0, v2, v3}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->hideOverlayWithDelay(J)V

    .line 123
    invoke-direct {p0, v2, v3}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stopServiceWithDelay(J)V

    .line 124
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 59
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V

    .line 60
    new-instance v5, Lcom/piriform/ccleaner/cleaning/advanced/f;

    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepFailureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-direct {v5, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/f;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/af;Lcom/piriform/ccleaner/cleaning/advanced/ag;)V

    .line 61
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/i;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    iget-object v3, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->analytics:Lcom/piriform/ccleaner/b/a;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/cleaning/advanced/i;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ai;Lcom/piriform/ccleaner/cleaning/advanced/x;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/cleaning/advanced/i$a;Lcom/piriform/ccleaner/cleaning/advanced/f;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

    .line 68
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->INTERRUPT:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 110
    return-void
.end method

.method protected onServiceConnected()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/p;->appHasJustLaunchedAccessibilitySettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/p;->setAppDidNotLaunchAccessibilitySettings()V

    .line 76
    invoke-static {}, Lcom/piriform/ccleaner/cleaning/advanced/q;->empty()Lcom/piriform/ccleaner/cleaning/advanced/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->returnToApp(Lcom/piriform/ccleaner/cleaning/advanced/q;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/k;->KILL_ADVANCED_CLEANING_SERVICE:Lcom/piriform/ccleaner/cleaning/advanced/k;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/k;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->delayedTaskHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->hideOverlayWithDelay(J)V

    .line 84
    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stopSelf()V

    .line 90
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->displayOverlay()V

    .line 87
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCacheCleaningServiceInteractor:Lcom/piriform/ccleaner/cleaning/advanced/i;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->startAdvancedCacheCleaning()V

    .line 88
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->startDelayedShutdownTask()V

    goto :goto_0
.end method
