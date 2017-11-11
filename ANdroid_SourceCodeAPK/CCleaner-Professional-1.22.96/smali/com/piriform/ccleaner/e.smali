.class public final Lcom/piriform/ccleaner/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a",
        "<",
        "Lcom/piriform/ccleaner/CCleanerApplication;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
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
            "Lcom/piriform/ccleaner/o/e;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/o;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/piriform/ccleaner/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/o;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/e;->b:Ljavax/a/a;

    .line 48
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/e;->c:Ljavax/a/a;

    .line 50
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/e;->d:Ljavax/a/a;

    .line 52
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_3
    iput-object p4, p0, Lcom/piriform/ccleaner/e;->e:Ljavax/a/a;

    .line 54
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_4
    iput-object p5, p0, Lcom/piriform/ccleaner/e;->f:Ljavax/a/a;

    .line 56
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_5
    iput-object p6, p0, Lcom/piriform/ccleaner/e;->g:Ljavax/a/a;

    .line 58
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_6
    iput-object p7, p0, Lcom/piriform/ccleaner/e;->h:Ljavax/a/a;

    .line 60
    sget-boolean v0, Lcom/piriform/ccleaner/e;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_7
    iput-object p8, p0, Lcom/piriform/ccleaner/e;->i:Ljavax/a/a;

    .line 62
    return-void
.end method

.method public static a(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/n/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/professional/g;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/o/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/o;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/a/a;",
            ">;)",
            "La/a",
            "<",
            "Lcom/piriform/ccleaner/CCleanerApplication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/piriform/ccleaner/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/piriform/ccleaner/e;-><init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 15
    check-cast p1, Lcom/piriform/ccleaner/CCleanerApplication;

    .line 1086
    if-nez p1, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->b:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/n/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->b:Lcom/piriform/ccleaner/n/a;

    .line 1090
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->c:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/professional/g;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->c:Lcom/piriform/ccleaner/professional/g;

    .line 1091
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->d:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/p;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->d:Lcom/piriform/ccleaner/t/p;

    .line 1092
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->e:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/e;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->e:Lcom/piriform/ccleaner/b/e;

    .line 1093
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->f:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 1094
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->g:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/o/e;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->g:Lcom/piriform/ccleaner/o/e;

    .line 1095
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->h:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/o;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->h:Lcom/piriform/ccleaner/s/o;

    .line 1096
    iget-object v0, p0, Lcom/piriform/ccleaner/e;->i:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/a/a;

    iput-object v0, p1, Lcom/piriform/ccleaner/CCleanerApplication;->i:Lcom/piriform/ccleaner/b/a/a;

    .line 15
    return-void
.end method
