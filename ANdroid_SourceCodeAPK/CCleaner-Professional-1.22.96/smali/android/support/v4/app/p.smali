.class public abstract Landroid/support/v4/app/p;
.super Landroid/support/v4/view/s;
.source "SourceFile"


# instance fields
.field private final b:Landroid/support/v4/app/m;

.field private c:Landroid/support/v4/app/q;

.field private d:Landroid/support/v4/app/h;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/m;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    .line 66
    iput-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    .line 67
    iput-object v0, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    .line 70
    iput-object p1, p0, Landroid/support/v4/app/p;->b:Landroid/support/v4/app/m;

    .line 71
    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/h;
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 88
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v4/app/p;->b:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    .line 2172
    :cond_0
    int-to-long v2, p2

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/p;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Landroid/support/v4/app/p;->b:Landroid/support/v4/app/m;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/m;->a(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 99
    iget-object v1, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/q;->c(Landroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 106
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {v0, v6}, Landroid/support/v4/app/h;->b(Z)V

    .line 108
    invoke-virtual {v0, v6}, Landroid/support/v4/app/h;->c(Z)V

    .line 111
    :cond_1
    return-object v0

    .line 101
    :cond_2
    invoke-virtual {p0, p2}, Landroid/support/v4/app/p;->a(I)Landroid/support/v4/app/h;

    move-result-object v0

    .line 103
    iget-object v1, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v5, v2, v3}, Landroid/support/v4/app/p;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->c()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    .line 146
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ViewPager with adapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/v4/app/p;->b:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    .line 121
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->c:Landroid/support/v4/app/q;

    check-cast p2, Landroid/support/v4/app/h;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/q;->b(Landroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    check-cast p1, Landroid/support/v4/app/h;

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    if-eq p1, v0, :cond_2

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->b(Z)V

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/h;->c(Z)V

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1, v2}, Landroid/support/v4/app/h;->b(Z)V

    .line 134
    invoke-virtual {p1, v2}, Landroid/support/v4/app/h;->c(Z)V

    .line 136
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/h;

    .line 138
    :cond_2
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 150
    check-cast p2, Landroid/support/v4/app/h;

    .line 2345
    iget-object v0, p2, Landroid/support/v4/app/h;->P:Landroid/view/View;

    .line 150
    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
