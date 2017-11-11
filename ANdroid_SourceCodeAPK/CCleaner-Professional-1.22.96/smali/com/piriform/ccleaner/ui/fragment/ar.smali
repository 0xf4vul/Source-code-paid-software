.class public final Lcom/piriform/ccleaner/ui/fragment/ar;
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
        "Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;",
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
            "Lcom/piriform/ccleaner/s/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/piriform/ccleaner/ui/fragment/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/piriform/ccleaner/ui/fragment/ar;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/a/a;Ljavax/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/piriform/ccleaner/ui/fragment/ar;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ar;->b:Ljavax/a/a;

    .line 24
    sget-boolean v0, Lcom/piriform/ccleaner/ui/fragment/ar;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/fragment/ar;->c:Ljavax/a/a;

    .line 26
    return-void
.end method

.method public static a(Ljavax/a/a;Ljavax/a/a;)La/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/s/h;",
            ">;",
            "Ljavax/a/a",
            "<",
            "Lcom/piriform/ccleaner/t/p;",
            ">;)",
            "La/a",
            "<",
            "Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ar;

    invoke-direct {v0, p0, p1}, Lcom/piriform/ccleaner/ui/fragment/ar;-><init>(Ljavax/a/a;Ljavax/a/a;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ar;->b:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/s/h;

    iput-object v0, p1, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->a:Lcom/piriform/ccleaner/s/h;

    .line 1041
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ar;->c:Ljavax/a/a;

    invoke-interface {v0}, Ljavax/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/p;

    iput-object v0, p1, Lcom/piriform/ccleaner/ui/fragment/SystemInfoFragment;->b:Lcom/piriform/ccleaner/t/p;

    .line 9
    return-void
.end method
