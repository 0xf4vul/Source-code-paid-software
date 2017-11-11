.class public final Lcom/piriform/ccleaner/j/br;
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
        "Lcom/piriform/ccleaner/professional/j;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/bm;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
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

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/piriform/ccleaner/j/br;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/bm;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/bm;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/f;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
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
            "Lcom/piriform/ccleaner/professional/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/br;->b:Lcom/piriform/ccleaner/j/bm;

    .line 44
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/br;->c:Ljavax/a/a;

    .line 46
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/br;->d:Ljavax/a/a;

    .line 48
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/br;->e:Ljavax/a/a;

    .line 50
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/br;->f:Ljavax/a/a;

    .line 52
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/br;->g:Ljavax/a/a;

    .line 54
    sget-boolean v0, Lcom/piriform/ccleaner/j/br;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/j/br;->h:Ljavax/a/a;

    .line 56
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/bm;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/bm;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/f;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
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
            "Lcom/piriform/ccleaner/professional/o;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/professional/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcom/piriform/ccleaner/j/br;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/j/br;-><init>(Lcom/piriform/ccleaner/j/bm;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 15
    .line 1060
    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->c:Ljavax/a/a;

    .line 1062
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/n/f;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->d:Ljavax/a/a;

    .line 1063
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/professional/d;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->e:Ljavax/a/a;

    .line 1064
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/g;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->f:Ljavax/a/a;

    .line 1065
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/piriform/ccleaner/b/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->g:Ljavax/a/a;

    .line 1066
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/piriform/ccleaner/b/e;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/br;->h:Ljavax/a/a;

    .line 1067
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/piriform/ccleaner/professional/o;

    .line 2048
    new-instance v0, Lcom/piriform/ccleaner/professional/c;

    invoke-direct/range {v0 .. v6}, Lcom/piriform/ccleaner/professional/c;-><init>(Lcom/piriform/ccleaner/n/f;Lcom/piriform/ccleaner/professional/d;Lf/g;Lcom/piriform/ccleaner/b/a;Lcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/professional/o;)V

    .line 1061
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1060
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/j;

    .line 15
    return-object v0
.end method
