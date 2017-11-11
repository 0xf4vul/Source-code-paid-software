.class public final Lcom/piriform/ccleaner/cleaning/c;
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
        "Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/scheduler/n;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/reminder/b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/piriform/ccleaner/cleaning/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/scheduler/n;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/reminder/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/c;->b:Ljavax/a/a;

    .line 55
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/c;->c:Ljavax/a/a;

    .line 57
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/c;->d:Ljavax/a/a;

    .line 59
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/c;->e:Ljavax/a/a;

    .line 61
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/cleaning/c;->f:Ljavax/a/a;

    .line 63
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/cleaning/c;->g:Ljavax/a/a;

    .line 65
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/cleaning/c;->h:Ljavax/a/a;

    .line 67
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_7
    iput-object p8, p0, Lcom/piriform/ccleaner/cleaning/c;->i:Ljavax/a/a;

    .line 69
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_8
    iput-object p9, p0, Lcom/piriform/ccleaner/cleaning/c;->j:Ljavax/a/a;

    .line 71
    sget-boolean v0, Lcom/piriform/ccleaner/cleaning/c;->a:Z

    if-nez v0, :cond_9

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_9
    iput-object p10, p0, Lcom/piriform/ccleaner/cleaning/c;->k:Ljavax/a/a;

    .line 73
    return-void
.end method

.method public static a(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/scheduler/n;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/reminder/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/ui/d/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)",
            "La/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/piriform/ccleaner/cleaning/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/piriform/ccleaner/cleaning/c;-><init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 16
    check-cast p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;

    .line 1101
    if-nez p1, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->b:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/e;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a:Lcom/piriform/ccleaner/a/e;

    .line 1105
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->c:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->b:Lcom/piriform/ccleaner/b;

    .line 1106
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->d:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/b;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->c:Lcom/piriform/ccleaner/a/b;

    .line 1107
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->e:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/b;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->d:Lcom/piriform/ccleaner/cleaning/b;

    .line 1108
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->f:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/n/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->e:Lcom/piriform/ccleaner/n/a;

    .line 1109
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->g:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/scheduler/n;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->f:Lcom/piriform/ccleaner/scheduler/n;

    .line 1110
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->h:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/d/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->g:Lcom/piriform/ccleaner/ui/d/a;

    .line 1111
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->i:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/reminder/b;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->h:Lcom/piriform/ccleaner/reminder/b;

    .line 1112
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->j:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/d/b;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->i:Lcom/piriform/ccleaner/ui/d/b;

    .line 1113
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/c;->k:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/e;

    iput-object v0, p1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->j:Lcom/piriform/ccleaner/b/e;

    .line 16
    return-void
.end method
