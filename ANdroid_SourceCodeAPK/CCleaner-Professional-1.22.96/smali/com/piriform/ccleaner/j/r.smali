.class public final Lcom/piriform/ccleaner/j/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b",
        "<",
        "Lcom/piriform/ccleaner/a/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/g;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
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
            "Lcom/piriform/ccleaner/m/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/a/a;
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
    .line 17
    const-class v0, Lcom/piriform/ccleaner/j/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/r;->b:Lcom/piriform/ccleaner/j/g;

    .line 53
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/r;->c:Ljavax/a/a;

    .line 55
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/r;->d:Ljavax/a/a;

    .line 57
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/r;->e:Ljavax/a/a;

    .line 59
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/r;->f:Ljavax/a/a;

    .line 61
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/r;->g:Ljavax/a/a;

    .line 63
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/j/r;->h:Ljavax/a/a;

    .line 65
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_7
    iput-object p8, p0, Lcom/piriform/ccleaner/j/r;->i:Ljavax/a/a;

    .line 67
    sget-boolean v0, Lcom/piriform/ccleaner/j/r;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_8
    iput-object p9, p0, Lcom/piriform/ccleaner/j/r;->j:Ljavax/a/a;

    .line 69
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/ContentResolver;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/piriform/ccleaner/j/r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/piriform/ccleaner/j/r;-><init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 17
    .line 1073
    iget-object v0, p0, Lcom/piriform/ccleaner/j/r;->c:Ljavax/a/a;

    .line 1075
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/q;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/r;->d:Ljavax/a/a;

    .line 1076
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/a/b;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/r;->e:Ljavax/a/a;

    .line 1077
    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/m/m;

    iget-object v3, p0, Lcom/piriform/ccleaner/j/r;->f:Ljavax/a/a;

    .line 1078
    invoke-interface {v3}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/piriform/ccleaner/j/r;->g:Ljavax/a/a;

    .line 1079
    invoke-interface {v4}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/piriform/ccleaner/j/r;->h:Ljavax/a/a;

    .line 1080
    invoke-interface {v5}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/piriform/ccleaner/s/h;

    iget-object v6, p0, Lcom/piriform/ccleaner/j/r;->i:Ljavax/a/a;

    .line 1081
    invoke-interface {v6}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/piriform/ccleaner/n/a;

    iget-object v7, p0, Lcom/piriform/ccleaner/j/r;->j:Ljavax/a/a;

    .line 1082
    invoke-interface {v7}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/piriform/ccleaner/b/e;

    .line 1074
    invoke-static/range {v0 .. v7}, Lcom/piriform/ccleaner/j/g;->a(Lcom/piriform/ccleaner/a/q;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/m/m;Landroid/content/pm/PackageManager;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/e;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1073
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/e;

    .line 17
    return-object v0
.end method
