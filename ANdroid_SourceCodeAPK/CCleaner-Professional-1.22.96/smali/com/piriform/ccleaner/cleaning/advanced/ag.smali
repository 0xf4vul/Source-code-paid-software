.class public final Lcom/piriform/ccleaner/cleaning/advanced/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SUCCESS:Ljava/lang/String;


# instance fields
.field private final analytics:Lcom/piriform/ccleaner/b/a;

.field private final firebaseUserRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

.field private final logs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteConfig:Lcom/piriform/ccleaner/b/b/b;

.field private final stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->STEP_COMPLETED:Lcom/piriform/ccleaner/cleaning/advanced/aa$a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/aa$a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->SUCCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/cleaning/advanced/ai;Lcom/piriform/ccleaner/cleaning/advanced/x;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/b/b;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    .line 30
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->firebaseUserRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 31
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->analytics:Lcom/piriform/ccleaner/b/a;

    .line 32
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->remoteConfig:Lcom/piriform/ccleaner/b/b/b;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/b/a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->analytics:Lcom/piriform/ccleaner/b/a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Z
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->isSuccessfulWalk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/piriform/ccleaner/cleaning/advanced/ag;)Lcom/piriform/ccleaner/cleaning/advanced/ai;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->stepsRepository:Lcom/piriform/ccleaner/cleaning/advanced/ai;

    return-object v0
.end method

.method private clearLogs(Ljava/util/List;)Lf/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;)",
            "Lf/c/b",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ag$3;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;Ljava/util/List;)V

    return-object v0
.end method

.method private isSuccessfulWalk()Z
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/y;

    .line 97
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/advanced/y;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    sget-object v2, Lcom/piriform/ccleaner/cleaning/advanced/ag;->SUCCESS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toUpdatedStepsRepository(Ljava/util/List;)Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;)",
            "Lf/c/e",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ag$2;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;Ljava/util/List;)V

    return-object v0
.end method

.method private toUserID()Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/c/e",
            "<",
            "Lcom/google/firebase/auth/i;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/ag$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/ag$4;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;)V

    return-object v0
.end method


# virtual methods
.method public final record(Lcom/piriform/ccleaner/cleaning/advanced/y;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public final reportIfFailure()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->remoteConfig:Lcom/piriform/ccleaner/b/b/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->firebaseUserRepository:Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 42
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/x;->user()Lf/d;

    move-result-object v0

    .line 43
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->toUserID()Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    .line 44
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->toUpdatedStepsRepository(Ljava/util/List;)Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ag;->logs:Ljava/util/List;

    .line 45
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/ag;->clearLogs(Ljava/util/List;)Lf/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/b;)Lf/d;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/ag$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/cleaning/advanced/ag$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ag;)V

    .line 46
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/e;)Lf/j;

    goto :goto_0
.end method
