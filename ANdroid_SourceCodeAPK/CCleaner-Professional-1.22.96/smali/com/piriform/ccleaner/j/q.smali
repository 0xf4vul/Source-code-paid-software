.class public final Lcom/piriform/ccleaner/j/q;
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
        "Lcom/piriform/ccleaner/a/b;",
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
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/k;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Landroid/content/ClipboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljavax/a/a;
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
    .line 20
    const-class v0, Lcom/piriform/ccleaner/j/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
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
            "Lcom/piriform/ccleaner/m/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/ClipboardManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/q;->b:Lcom/piriform/ccleaner/j/g;

    .line 65
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/q;->c:Ljavax/a/a;

    .line 67
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/q;->d:Ljavax/a/a;

    .line 69
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/q;->e:Ljavax/a/a;

    .line 71
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/q;->f:Ljavax/a/a;

    .line 73
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/q;->g:Ljavax/a/a;

    .line 75
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/j/q;->h:Ljavax/a/a;

    .line 77
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_7
    iput-object p8, p0, Lcom/piriform/ccleaner/j/q;->i:Ljavax/a/a;

    .line 79
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_8
    iput-object p9, p0, Lcom/piriform/ccleaner/j/q;->j:Ljavax/a/a;

    .line 81
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_9

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_9
    iput-object p10, p0, Lcom/piriform/ccleaner/j/q;->k:Ljavax/a/a;

    .line 83
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_a

    if-nez p11, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_a
    iput-object p11, p0, Lcom/piriform/ccleaner/j/q;->l:Ljavax/a/a;

    .line 85
    sget-boolean v0, Lcom/piriform/ccleaner/j/q;->a:Z

    if-nez v0, :cond_b

    if-nez p12, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_b
    iput-object p12, p0, Lcom/piriform/ccleaner/j/q;->m:Ljavax/a/a;

    .line 87
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/a/q;",
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
            "Lcom/piriform/ccleaner/m/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/pm/PackageManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Landroid/content/ClipboardManager;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/piriform/ccleaner/j/q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/piriform/ccleaner/j/q;-><init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 11

    .prologue
    .line 20
    .line 1091
    iget-object v0, p0, Lcom/piriform/ccleaner/j/q;->c:Ljavax/a/a;

    .line 1093
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/q;->d:Ljavax/a/a;

    .line 1094
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/a/q;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/q;->e:Ljavax/a/a;

    .line 1095
    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/piriform/ccleaner/j/q;->f:Ljavax/a/a;

    .line 1096
    invoke-interface {v3}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/piriform/ccleaner/s/h;

    iget-object v4, p0, Lcom/piriform/ccleaner/j/q;->g:Ljavax/a/a;

    .line 1097
    invoke-interface {v4}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/piriform/ccleaner/m/k;

    iget-object v5, p0, Lcom/piriform/ccleaner/j/q;->h:Ljavax/a/a;

    .line 1098
    invoke-interface {v5}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/piriform/ccleaner/j/q;->i:Ljavax/a/a;

    .line 1099
    invoke-interface {v6}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/piriform/ccleaner/m/m;

    iget-object v7, p0, Lcom/piriform/ccleaner/j/q;->j:Ljavax/a/a;

    .line 1100
    invoke-interface {v7}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    iget-object v8, p0, Lcom/piriform/ccleaner/j/q;->k:Ljavax/a/a;

    .line 1101
    invoke-interface {v8}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/piriform/ccleaner/f/m;

    iget-object v9, p0, Lcom/piriform/ccleaner/j/q;->l:Ljavax/a/a;

    .line 1102
    invoke-interface {v9}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lcom/piriform/ccleaner/j/q;->m:Ljavax/a/a;

    .line 1103
    invoke-interface {v10}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/piriform/ccleaner/b/e;

    .line 1092
    invoke-static/range {v0 .. v10}, Lcom/piriform/ccleaner/j/g;->a(Landroid/content/Context;Lcom/piriform/ccleaner/a/q;Landroid/content/ContentResolver;Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/m/k;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/m;Landroid/content/ClipboardManager;Lcom/piriform/ccleaner/f/m;Ljava/util/concurrent/Executor;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/a/b;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1091
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/b;

    .line 20
    return-object v0
.end method
