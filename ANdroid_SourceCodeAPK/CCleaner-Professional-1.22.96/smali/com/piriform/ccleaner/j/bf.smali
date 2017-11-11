.class public final Lcom/piriform/ccleaner/j/bf;
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
        "Lcom/piriform/ccleaner/o/e;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/bb;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/j;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/piriform/ccleaner/j/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/bb;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/bb;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/i;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/bf;->b:Lcom/piriform/ccleaner/j/bb;

    .line 41
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/bf;->c:Ljavax/a/a;

    .line 43
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/bf;->d:Ljavax/a/a;

    .line 45
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/bf;->e:Ljavax/a/a;

    .line 47
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/bf;->f:Ljavax/a/a;

    .line 49
    sget-boolean v0, Lcom/piriform/ccleaner/j/bf;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/bf;->g:Ljavax/a/a;

    .line 51
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/bb;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/bb;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/i;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/o/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/piriform/ccleaner/j/bf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/j/bf;-><init>(Lcom/piriform/ccleaner/j/bb;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 14
    .line 1055
    iget-object v0, p0, Lcom/piriform/ccleaner/j/bf;->c:Ljavax/a/a;

    .line 1057
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/o/i;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/bf;->d:Ljavax/a/a;

    .line 1058
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/o/j;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/bf;->e:Ljavax/a/a;

    .line 1059
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/piriform/ccleaner/b/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/bf;->f:Ljavax/a/a;

    .line 1060
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/piriform/ccleaner/b/e;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/bf;->g:Ljavax/a/a;

    .line 1061
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/g;

    .line 1064
    new-instance v0, Lcom/piriform/ccleaner/o/f;

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/o/f;-><init>(Lcom/piriform/ccleaner/o/i;Lcom/piriform/ccleaner/o/j;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/e;Lf/g;)V

    .line 1056
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1055
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/o/e;

    .line 14
    return-object v0
.end method
