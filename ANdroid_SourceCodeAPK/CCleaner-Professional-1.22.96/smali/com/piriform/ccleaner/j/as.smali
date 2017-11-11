.class public final Lcom/piriform/ccleaner/j/as;
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
        "Lcom/piriform/ccleaner/storageanalyzer/backend/b;",
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
            "Lcom/piriform/ccleaner/f/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/k;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/a/a;
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
    .line 14
    const-class v0, Lcom/piriform/ccleaner/j/as;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/as;->b:Lcom/piriform/ccleaner/j/g;

    .line 41
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/as;->c:Ljavax/a/a;

    .line 43
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/as;->d:Ljavax/a/a;

    .line 45
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/as;->e:Ljavax/a/a;

    .line 47
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/as;->f:Ljavax/a/a;

    .line 49
    sget-boolean v0, Lcom/piriform/ccleaner/j/as;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/as;->g:Ljavax/a/a;

    .line 51
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/f/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/k;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/storageanalyzer/backend/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/piriform/ccleaner/j/as;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/j/as;-><init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 14
    .line 1055
    iget-object v0, p0, Lcom/piriform/ccleaner/j/as;->c:Ljavax/a/a;

    .line 1057
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/f/m;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/as;->d:Ljavax/a/a;

    .line 1058
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/s/k;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/as;->e:Ljavax/a/a;

    .line 1059
    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/m/k;

    iget-object v3, p0, Lcom/piriform/ccleaner/j/as;->f:Ljavax/a/a;

    .line 1060
    invoke-interface {v3}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/g;

    iget-object v4, p0, Lcom/piriform/ccleaner/j/as;->g:Ljavax/a/a;

    .line 1061
    invoke-interface {v4}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/piriform/ccleaner/b/e;

    .line 1056
    invoke-static {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/j/g;->a(Lcom/piriform/ccleaner/f/m;Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/m/k;Lf/g;Lcom/piriform/ccleaner/b/e;)Lcom/piriform/ccleaner/storageanalyzer/backend/b;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1055
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/backend/b;

    .line 14
    return-object v0
.end method
