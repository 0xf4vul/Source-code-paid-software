.class public final Lcom/piriform/ccleaner/settings/analysis/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/settings/analysis/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/piriform/ccleaner/settings/analysis/a;

.field final b:Lcom/piriform/ccleaner/a/a/d;

.field final c:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    .line 179
    iput-object p2, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->b:Lcom/piriform/ccleaner/a/a/d;

    .line 180
    iput-object p3, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->c:Landroid/view/View;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;Landroid/view/View;B)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/piriform/ccleaner/settings/analysis/a$a;-><init>(Lcom/piriform/ccleaner/settings/analysis/a;Lcom/piriform/ccleaner/a/a/d;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->a:Lcom/piriform/ccleaner/settings/analysis/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/piriform/ccleaner/settings/analysis/a$a;->b:Lcom/piriform/ccleaner/a/a/d;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/piriform/ccleaner/settings/analysis/a;->a(Lcom/piriform/ccleaner/settings/analysis/a;Landroid/view/View;Lcom/piriform/ccleaner/a/a/d;Z)V

    .line 189
    return-void
.end method
