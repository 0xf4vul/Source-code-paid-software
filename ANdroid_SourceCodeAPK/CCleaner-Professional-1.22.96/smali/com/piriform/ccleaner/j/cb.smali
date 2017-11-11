.class public final Lcom/piriform/ccleaner/j/cb;
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
        "Lcom/piriform/ccleaner/ui/activity/h;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/piriform/ccleaner/j/ca;

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
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
            "Lcom/piriform/ccleaner/cleaning/advanced/l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/piriform/ccleaner/j/cb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/ca;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/ca;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/l;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/c/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/cb;->b:Lcom/piriform/ccleaner/j/ca;

    .line 49
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/cb;->c:Ljavax/a/a;

    .line 51
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/cb;->d:Ljavax/a/a;

    .line 53
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/cb;->e:Ljavax/a/a;

    .line 55
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/cb;->f:Ljavax/a/a;

    .line 57
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/j/cb;->g:Ljavax/a/a;

    .line 59
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/j/cb;->h:Ljavax/a/a;

    .line 61
    sget-boolean v0, Lcom/piriform/ccleaner/j/cb;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_7
    iput-object p8, p0, Lcom/piriform/ccleaner/j/cb;->i:Ljavax/a/a;

    .line 63
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/ca;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/ca;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/l;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/c/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/c;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/ui/activity/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/piriform/ccleaner/j/cb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/piriform/ccleaner/j/cb;-><init>(Lcom/piriform/ccleaner/j/ca;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 16
    .line 1067
    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->c:Ljavax/a/a;

    .line 1069
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/s/h;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->d:Ljavax/a/a;

    .line 1070
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/cleaning/advanced/d;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->e:Ljavax/a/a;

    .line 1071
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/piriform/ccleaner/b/a/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->f:Ljavax/a/a;

    .line 1072
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/piriform/ccleaner/n/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->g:Ljavax/a/a;

    .line 1073
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/piriform/ccleaner/cleaning/advanced/l;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->h:Ljavax/a/a;

    .line 1074
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/piriform/ccleaner/b/c/a;

    iget-object v0, p0, Lcom/piriform/ccleaner/j/cb;->i:Ljavax/a/a;

    .line 1075
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/piriform/ccleaner/b/b/c;

    .line 2041
    new-instance v0, Lcom/piriform/ccleaner/ui/activity/h;

    invoke-direct/range {v0 .. v7}, Lcom/piriform/ccleaner/ui/activity/h;-><init>(Lcom/piriform/ccleaner/s/h;Lcom/piriform/ccleaner/cleaning/advanced/d;Lcom/piriform/ccleaner/b/a/a;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/cleaning/advanced/l;Lcom/piriform/ccleaner/b/c/a;Lcom/piriform/ccleaner/b/b/c;)V

    .line 1068
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1067
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/activity/h;

    .line 16
    return-object v0
.end method
