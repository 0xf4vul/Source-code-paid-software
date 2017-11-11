.class public final Lcom/piriform/ccleaner/j/ab;
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
        "Lcom/piriform/ccleaner/s/h;",
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
            "Lcom/piriform/ccleaner/s/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/i;",
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
            "Lcom/piriform/ccleaner/s/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/piriform/ccleaner/j/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/i;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/ab;->b:Lcom/piriform/ccleaner/j/g;

    .line 36
    sget-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/ab;->c:Ljavax/a/a;

    .line 38
    sget-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/ab;->d:Ljavax/a/a;

    .line 40
    sget-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/ab;->e:Ljavax/a/a;

    .line 42
    sget-boolean v0, Lcom/piriform/ccleaner/j/ab;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/j/ab;->f:Ljavax/a/a;

    .line 44
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/g;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/i;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/m/m;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/piriform/ccleaner/j/ab;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/piriform/ccleaner/j/ab;-><init>(Lcom/piriform/ccleaner/j/g;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 13
    .line 1048
    iget-object v0, p0, Lcom/piriform/ccleaner/j/ab;->c:Ljavax/a/a;

    .line 1050
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/e;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/ab;->d:Ljavax/a/a;

    .line 1051
    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/s/i;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/ab;->e:Ljavax/a/a;

    .line 1052
    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/m/m;

    iget-object v3, p0, Lcom/piriform/ccleaner/j/ab;->f:Ljavax/a/a;

    .line 1053
    invoke-interface {v3}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/piriform/ccleaner/s/j;

    .line 1049
    invoke-static {v0, v1, v2, v3}, Lcom/piriform/ccleaner/j/g;->a(Lcom/piriform/ccleaner/s/e;Lcom/piriform/ccleaner/s/i;Lcom/piriform/ccleaner/m/m;Lcom/piriform/ccleaner/s/j;)Lcom/piriform/ccleaner/s/h;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1048
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/h;

    .line 13
    return-object v0
.end method
