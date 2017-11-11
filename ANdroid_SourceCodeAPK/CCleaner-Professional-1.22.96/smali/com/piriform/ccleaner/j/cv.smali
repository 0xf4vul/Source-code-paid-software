.class public final Lcom/piriform/ccleaner/j/cv;
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
        "Lcom/piriform/ccleaner/b/b/c;",
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
            "Lcom/piriform/ccleaner/b/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lf/g;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/piriform/ccleaner/j/cv;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/cv;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/piriform/ccleaner/j/cv;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/cv;->b:Lcom/piriform/ccleaner/j/cn;

    .line 32
    sget-boolean v0, Lcom/piriform/ccleaner/j/cv;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/cv;->c:Ljavax/a/a;

    .line 34
    sget-boolean v0, Lcom/piriform/ccleaner/j/cv;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/cv;->d:Ljavax/a/a;

    .line 36
    sget-boolean v0, Lcom/piriform/ccleaner/j/cv;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/cv;->e:Ljavax/a/a;

    .line 38
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/b/d;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lf/g;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/b/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/piriform/ccleaner/j/cv;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/piriform/ccleaner/j/cv;-><init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    .line 1042
    iget-object v0, p0, Lcom/piriform/ccleaner/j/cv;->c:Ljavax/a/a;

    .line 1044
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/b/d;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/cv;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/g;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/cv;->e:Ljavax/a/a;

    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/g;

    .line 1053
    new-instance v3, Lcom/piriform/ccleaner/b/b/c;

    invoke-direct {v3, v0, v1, v2}, Lcom/piriform/ccleaner/b/b/c;-><init>(Lcom/piriform/ccleaner/b/b/b;Lf/g;Lf/g;)V

    .line 1043
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1042
    invoke-static {v3, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/b/c;

    .line 11
    return-object v0
.end method
