.class public final Lcom/novoda/notils/c/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/novoda/notils/c/b/b;


# direct methods
.method private constructor <init>(Lcom/novoda/notils/c/b/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/novoda/notils/c/b/e;->a:Lcom/novoda/notils/c/b/b;

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/novoda/notils/c/b/e;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/novoda/notils/c/b/e;

    new-instance v1, Lcom/novoda/notils/c/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/novoda/notils/c/b/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/novoda/notils/c/b/e;-><init>(Lcom/novoda/notils/c/b/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/novoda/notils/c/b/e;->a:Lcom/novoda/notils/c/b/b;

    invoke-virtual {v0, p1}, Lcom/novoda/notils/c/b/b;->a(I)V

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/novoda/notils/c/b/e;->a:Lcom/novoda/notils/c/b/b;

    .line 1043
    iget-object v1, v0, Lcom/novoda/notils/c/b/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Lcom/novoda/notils/c/b/b;->a(Landroid/widget/Toast;)V

    .line 48
    return-void
.end method
