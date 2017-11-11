.class final Lcom/piriform/ccleaner/ui/main/a$1;
.super Lcom/google/android/gms/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/main/a;->setupAdLoadedListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/piriform/ccleaner/ui/main/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/a$1;->b:Lcom/piriform/ccleaner/ui/main/a;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->a()V

    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a$1;->b:Lcom/piriform/ccleaner/ui/main/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/a;->b(Lcom/piriform/ccleaner/ui/main/a;)V

    .line 149
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/a;->a(I)V

    .line 142
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a$1;->b:Lcom/piriform/ccleaner/ui/main/a;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/main/a;->a(Lcom/piriform/ccleaner/ui/main/a;I)V

    .line 143
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/gms/ads/a;->b()V

    .line 134
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a$1;->b:Lcom/piriform/ccleaner/ui/main/a;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/a;->c:Lcom/piriform/ccleaner/b/f;

    const-string/jumbo v1, "Advert loaded"

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/f;->a(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a$1;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/a$1;->b:Lcom/piriform/ccleaner/ui/main/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/main/a;->a(Lcom/piriform/ccleaner/ui/main/a;)V

    .line 137
    return-void
.end method
