.class public final Lcom/piriform/ccleaner/cleaning/advanced/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final advancedCleaningPreferencesProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/p;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsNavigatorProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/af;",
            ">;"
        }
    .end annotation
.end field

.field private final stepFailureReporterProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
            ">;"
        }
    .end annotation
.end field

.field private final stepsRepositoryProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final userRepositoryProvider:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/piriform/ccleaner/cleaning/advanced/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ai;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/af;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->stepsRepositoryProvider:Ljavax/a/a;

    .line 35
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->userRepositoryProvider:Ljavax/a/a;

    .line 37
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->stepFailureReporterProvider:Ljavax/a/a;

    .line 39
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->analyticsProvider:Ljavax/a/a;

    .line 41
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->settingsNavigatorProvider:Ljavax/a/a;

    .line 43
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/advanced/j;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->advancedCleaningPreferencesProvider:Ljavax/a/a;

    .line 45
    return-void
.end method

.method public static create(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ai;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/af;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/p;",
            ">;)",
            "La/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/cleaning/advanced/j;-><init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method

.method public static injectAdvancedCleaningPreferences(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/p;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    .line 108
    return-void
.end method

.method public static injectAnalytics(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/a;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->analytics:Lcom/piriform/ccleaner/b/a;

    .line 96
    return-void
.end method

.method public static injectSettingsNavigator(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/af;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/af;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    .line 102
    return-void
.end method

.method public static injectStepFailureReporter(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ag;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepFailureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    .line 91
    return-void
.end method

.method public static injectStepsRepository(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ai;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ai;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    .line 79
    return-void
.end method

.method public static injectUserRepository(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/x;

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 85
    return-void
.end method


# virtual methods
.method public final injectMembers(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V
    .locals 2

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->stepsRepositoryProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ai;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    .line 69
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->userRepositoryProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/x;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->userRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->stepFailureReporterProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ag;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->stepFailureReporter:Lcom/piriform/ccleaner/cleaning/advanced/ag;

    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->analyticsProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->analytics:Lcom/piriform/ccleaner/b/a;

    .line 72
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->settingsNavigatorProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/af;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->settingsNavigator:Lcom/piriform/ccleaner/cleaning/advanced/af;

    .line 73
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/j;->advancedCleaningPreferencesProvider:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/p;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;->advancedCleaningPreferences:Lcom/piriform/ccleaner/cleaning/advanced/p;

    .line 74
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/j;->injectMembers(Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;)V

    return-void
.end method
