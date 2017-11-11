.class public final Lcom/piriform/ccleaner/j/cr;
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
        "Lcom/piriform/ccleaner/cleaning/advanced/x;",
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
    const-class v0, Lcom/piriform/ccleaner/j/cr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/j/cr;->a:Z

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
            "Landroid/content/Context;",
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
    sget-boolean v0, Lcom/piriform/ccleaner/j/cr;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/j/cr;->b:Lcom/piriform/ccleaner/j/cn;

    .line 32
    sget-boolean v0, Lcom/piriform/ccleaner/j/cr;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/j/cr;->c:Ljavax/a/a;

    .line 34
    sget-boolean v0, Lcom/piriform/ccleaner/j/cr;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/j/cr;->d:Ljavax/a/a;

    .line 36
    sget-boolean v0, Lcom/piriform/ccleaner/j/cr;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/j/cr;->e:Ljavax/a/a;

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
            "Landroid/content/Context;",
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
            "Lcom/piriform/ccleaner/cleaning/advanced/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/piriform/ccleaner/j/cr;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/piriform/ccleaner/j/cr;-><init>(Lcom/piriform/ccleaner/j/cn;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    .line 1042
    iget-object v0, p0, Lcom/piriform/ccleaner/j/cr;->c:Ljavax/a/a;

    .line 1044
    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/piriform/ccleaner/j/cr;->d:Ljavax/a/a;

    invoke-interface {v1}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/g;

    iget-object v2, p0, Lcom/piriform/ccleaner/j/cr;->e:Ljavax/a/a;

    invoke-interface {v2}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/g;

    .line 1105
    invoke-static {v0}, Lcom/piriform/ccleaner/j/cn;->b(Landroid/content/Context;)V

    .line 1106
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/x;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->a()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/piriform/ccleaner/cleaning/advanced/x;-><init>(Lf/g;Lf/g;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 1043
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1042
    invoke-static {v0, v1}, La/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/x;

    .line 11
    return-object v0
.end method
