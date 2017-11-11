.class final Lcom/piriform/ccleaner/cleaning/advanced/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/cleaning/advanced/i$a;
    }
.end annotation


# static fields
.field private static final TOTAL_TIME_TO_CLEAN_LABEL:Ljava/lang/String; = "totalTimeToClean"


# instance fields
.field private final accessibilityWalkerFactory:Lcom/piriform/ccleaner/cleaning/advanced/f;

.field private final analytics:Lcom/piriform/ccleaner/b/a;

.field private cacheCleaningListener:Lcom/piriform/ccleaner/cleaning/advanced/i$a;

.field private cleanStartedTimestamp:J

.field private listenToEvents:Z

.field private final stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

.field private final userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

.field private walker:Lcom/piriform/ccleaner/cleaning/advanced/e;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ai;Lcom/piriform/ccleaner/cleaning/advanced/x;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/cleaning/advanced/i$a;Lcom/piriform/ccleaner/cleaning/advanced/f;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    .line 44
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 45
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->analytics:Lcom/piriform/ccleaner/b/a;

    .line 46
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->cacheCleaningListener:Lcom/piriform/ccleaner/cleaning/advanced/i$a;

    .line 47
    iput-object p5, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->accessibilityWalkerFactory:Lcom/piriform/ccleaner/cleaning/advanced/f;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/b/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->analytics:Lcom/piriform/ccleaner/b/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/p/b;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->stepsObserver()Lcom/piriform/ccleaner/p/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/ai;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    return-object v0
.end method

.method static synthetic access$300(Lcom/piriform/ccleaner/cleaning/advanced/i;Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i;->onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    return-void
.end method

.method static synthetic access$402(Lcom/piriform/ccleaner/cleaning/advanced/i;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->listenToEvents:Z

    return p1
.end method

.method static synthetic access$500(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->walker:Lcom/piriform/ccleaner/cleaning/advanced/e;

    return-object v0
.end method

.method static synthetic access$502(Lcom/piriform/ccleaner/cleaning/advanced/i;Lcom/piriform/ccleaner/cleaning/advanced/e;)Lcom/piriform/ccleaner/cleaning/advanced/e;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->walker:Lcom/piriform/ccleaner/cleaning/advanced/e;

    return-object p1
.end method

.method static synthetic access$600(Lcom/piriform/ccleaner/cleaning/advanced/i;)Lcom/piriform/ccleaner/cleaning/advanced/f;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->accessibilityWalkerFactory:Lcom/piriform/ccleaner/cleaning/advanced/f;

    return-object v0
.end method

.method private fetchStepsForLoggedInUsers()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 57
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/x;->user()Lf/d;

    move-result-object v0

    .line 58
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->userObserver()Lcom/piriform/ccleaner/p/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    .line 59
    return-void
.end method

.method private onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->listenToEvents:Z

    .line 140
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->cacheCleaningListener:Lcom/piriform/ccleaner/cleaning/advanced/i$a;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/i$a;->onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 141
    return-void
.end method

.method private stepsObserver()Lcom/piriform/ccleaner/p/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/piriform/ccleaner/p/b",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/i$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/i$2;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/i;)V

    return-object v0
.end method

.method private userObserver()Lcom/piriform/ccleaner/p/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/piriform/ccleaner/p/b",
            "<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/i$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/i$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/i;)V

    return-object v0
.end method


# virtual methods
.method final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->listenToEvents:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->walker:Lcom/piriform/ccleaner/cleaning/advanced/e;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/cleaning/advanced/e;->step(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public final onWalkingCompleted()V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->onCacheCleaningCompleted(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V

    .line 136
    return-void
.end method

.method final startAdvancedCacheCleaning()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->cleanStartedTimestamp:J

    .line 52
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/i;->fetchStepsForLoggedInUsers()V

    .line 53
    return-void
.end method

.method final stopAdvancedCacheCleaning()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->walker:Lcom/piriform/ccleaner/cleaning/advanced/e;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->walker:Lcom/piriform/ccleaner/cleaning/advanced/e;

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/e;->stop()V

    .line 115
    :cond_0
    return-void
.end method

.method final trackStopSequence(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;)V
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->cleanStartedTimestamp:J

    sub-long/2addr v0, v2

    .line 126
    sget-object v2, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    if-ne p1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->analytics:Lcom/piriform/ccleaner/b/a;

    sget-object v3, Lcom/piriform/ccleaner/b/b;->C:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v4, "totalTimeToClean"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/advanced/i;->analytics:Lcom/piriform/ccleaner/b/a;

    sget-object v3, Lcom/piriform/ccleaner/b/b;->D:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v4, "totalTimeToClean"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    goto :goto_0
.end method
