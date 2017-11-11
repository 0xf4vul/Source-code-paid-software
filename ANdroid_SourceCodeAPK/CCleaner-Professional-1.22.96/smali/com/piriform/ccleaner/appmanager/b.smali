.class public final Lcom/piriform/ccleaner/appmanager/b;
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
        "Lcom/piriform/ccleaner/appmanager/AppManagerActivity;",
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
            "Lcom/piriform/ccleaner/appmanager/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/a/a;
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
    .line 9
    const-class v0, Lcom/piriform/ccleaner/appmanager/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/appmanager/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/appmanager/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/piriform/ccleaner/appmanager/b;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/b;->b:Ljavax/a/a;

    .line 27
    sget-boolean v0, Lcom/piriform/ccleaner/appmanager/b;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/b;->c:Ljavax/a/a;

    .line 29
    sget-boolean v0, Lcom/piriform/ccleaner/appmanager/b;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p3, p0, Lcom/piriform/ccleaner/appmanager/b;->d:Ljavax/a/a;

    .line 31
    return-void
.end method

.method public static a(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/appmanager/j;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/b/e;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/j;",
            ">;)",
            "La/a",
            "<",
            "Lcom/piriform/ccleaner/appmanager/AppManagerActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/piriform/ccleaner/appmanager/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/piriform/ccleaner/appmanager/b;-><init>(Ljavax/a/a;Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/b;->b:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/appmanager/j;

    iput-object v0, p1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->m:Lcom/piriform/ccleaner/appmanager/j;

    .line 1047
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/b;->c:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/b/e;

    iput-object v0, p1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->n:Lcom/piriform/ccleaner/b/e;

    .line 1048
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/b;->d:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/j;

    iput-object v0, p1, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->o:Lcom/piriform/ccleaner/s/j;

    .line 9
    return-void
.end method
