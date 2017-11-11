.class public final Lcom/piriform/ccleaner/j/ct;
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
        "Lcom/piriform/ccleaner/cleaning/advanced/v;",
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
            "Lcom/google/firebase/database/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/piriform/ccleaner/j/ct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/ct;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
            "Ljavax/a/a",
            "<",
            "Lcom/google/firebase/database/f;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/piriform/ccleaner/j/ct;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/ct;->b:Lcom/piriform/ccleaner/j/cn;

    .line 29
    sget-boolean v0, Lcom/piriform/ccleaner/j/ct;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/ct;->c:Ljavax/a/a;

    .line 31
    sget-boolean v0, Lcom/piriform/ccleaner/j/ct;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/ct;->d:Ljavax/a/a;

    .line 33
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;)La/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/j/cn;",
            "Ljavax/a/a",
            "<",
            "Lcom/google/firebase/database/f;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;)",
            "La/a/b",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/piriform/ccleaner/j/ct;

    invoke-direct {v0, p0, p1, p2}, Lcom/piriform/ccleaner/j/ct;-><init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 11
    .line 1037
    iget-object v0, p0, Lcom/piriform/ccleaner/j/ct;->c:Ljavax/a/a;

    .line 1039
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/f;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/ct;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/s/h;

    .line 1073
    new-instance v2, Lcom/piriform/ccleaner/cleaning/advanced/v;

    invoke-direct {v2, v0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;-><init>(Lcom/google/firebase/database/f;Lcom/piriform/ccleaner/s/h;)V

    .line 1038
    const-string/jumbo v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1037
    invoke-static {v2, v0}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/v;

    .line 11
    return-object v0
.end method
