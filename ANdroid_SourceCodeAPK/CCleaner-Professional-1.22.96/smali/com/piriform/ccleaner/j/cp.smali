.class public final Lcom/piriform/ccleaner/j/cp;
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
        "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/cn;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ai;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
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
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/piriform/ccleaner/j/cp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
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
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/cp;->b:Lcom/piriform/ccleaner/j/cn;

    .line 37
    sget-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/cp;->c:Ljavax/a/a;

    .line 39
    sget-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/cp;->d:Ljavax/a/a;

    .line 41
    sget-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/cp;->e:Ljavax/a/a;

    .line 43
    sget-boolean v0, Lcom/piriform/ccleaner/j/cp;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/cp;->f:Ljavax/a/a;

    .line 45
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
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
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/b;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/piriform/ccleaner/j/cp;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/j/cp;-><init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 13
    .line 1049
    iget-object v0, p0, Lcom/piriform/ccleaner/j/cp;->c:Ljavax/a/a;

    .line 1051
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ai;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/cp;->d:Ljavax/a/a;

    .line 1052
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/cleaning/advanced/x;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/cp;->e:Ljavax/a/a;

    .line 1053
    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/b/a;

    iget-object v3, p0, Lcom/piriform/ccleaner/j/cp;->f:Ljavax/a/a;

    .line 1054
    invoke-interface {v3}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/piriform/ccleaner/b/b/b;

    .line 1115
    new-instance v4, Lcom/piriform/ccleaner/cleaning/advanced/ag;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/piriform/ccleaner/cleaning/advanced/ag;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ai;Lcom/piriform/ccleaner/cleaning/advanced/x;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/b/b;)V

    .line 1050
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1049
    invoke-static {v4, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/ag;

    .line 13
    return-object v0
.end method
