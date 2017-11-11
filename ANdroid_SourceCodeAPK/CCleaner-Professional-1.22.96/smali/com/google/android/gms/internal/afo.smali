.class public final Lcom/google/android/gms/internal/afo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/afo$a;,
        Lcom/google/android/gms/internal/afo$d;,
        Lcom/google/android/gms/internal/afo$b;,
        Lcom/google/android/gms/internal/afo$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g",
            "<",
            "Lcom/google/android/gms/internal/afs;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<",
            "Lcom/google/android/gms/internal/afs;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Z

.field private k:I

.field private final l:Lcom/google/android/gms/internal/afp;

.field private final m:Lcom/google/android/gms/common/util/d;

.field private n:Lcom/google/android/gms/internal/afo$d;

.field private final o:Lcom/google/android/gms/internal/afo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/afo;->a:Lcom/google/android/gms/common/api/a$g;

    new-instance v0, Lcom/google/android/gms/internal/afo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/afo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/afo;->b:Lcom/google/android/gms/common/api/a$b;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string/jumbo v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/internal/afo;->b:Lcom/google/android/gms/common/api/a$b;

    sget-object v3, Lcom/google/android/gms/internal/afo;->a:Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$b;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v0, Lcom/google/android/gms/internal/afo;->c:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    .line 1000
    new-instance v3, Lcom/google/android/gms/internal/afr;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/afr;-><init>(Landroid/content/Context;)V

    .line 0
    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/afw;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/afw;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/afo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/afp;Lcom/google/android/gms/common/util/d;Lcom/google/android/gms/internal/afo$b;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/afp;Lcom/google/android/gms/common/util/d;Lcom/google/android/gms/internal/afo$b;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/internal/afo;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/afo;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/afo;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/afo;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/afo;->e:I

    iput v2, p0, Lcom/google/android/gms/internal/afo;->g:I

    iput-object p2, p0, Lcom/google/android/gms/internal/afo;->f:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/afo;->h:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/afo;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/afo;->j:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/afo;->l:Lcom/google/android/gms/internal/afp;

    iput-object p4, p0, Lcom/google/android/gms/internal/afo;->m:Lcom/google/android/gms/common/util/d;

    new-instance v1, Lcom/google/android/gms/internal/afo$d;

    invoke-direct {v1}, Lcom/google/android/gms/internal/afo$d;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/afo;->n:Lcom/google/android/gms/internal/afo$d;

    iput v0, p0, Lcom/google/android/gms/internal/afo;->k:I

    iput-object p5, p0, Lcom/google/android/gms/internal/afo;->o:Lcom/google/android/gms/internal/afo$b;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/afo;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/afo;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "ClearcutLogger"

    const-string/jumbo v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/afo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/afo;->g:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()[I
    .locals 1

    .prologue
    .line 2000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()[[B
    .locals 1

    .prologue
    .line 4000
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/common/util/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->m:Lcom/google/android/gms/common/util/d;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afo$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->n:Lcom/google/android/gms/internal/afo$d;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/afo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/afo;->j:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/afo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/afo;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/afo;->e:I

    return v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afo$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->o:Lcom/google/android/gms/internal/afo$b;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/afo;)Lcom/google/android/gms/internal/afp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->l:Lcom/google/android/gms/internal/afp;

    return-object v0
.end method
