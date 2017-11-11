.class public final Lf/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lf/i/c$b;

.field static final d:Lf/i/c$a;

.field static final e:Lf/i/c$a;


# instance fields
.field final a:Z

.field final b:[Lf/i/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lf/i/c$b;

    sput-object v0, Lf/i/c$a;->c:[Lf/i/c$b;

    .line 154
    new-instance v0, Lf/i/c$a;

    const/4 v1, 0x1

    sget-object v2, Lf/i/c$a;->c:[Lf/i/c$b;

    invoke-direct {v0, v1, v2}, Lf/i/c$a;-><init>(Z[Lf/i/c$b;)V

    sput-object v0, Lf/i/c$a;->d:Lf/i/c$a;

    .line 155
    new-instance v0, Lf/i/c$a;

    sget-object v1, Lf/i/c$a;->c:[Lf/i/c$b;

    invoke-direct {v0, v3, v1}, Lf/i/c$a;-><init>(Z[Lf/i/c$b;)V

    sput-object v0, Lf/i/c$a;->e:Lf/i/c$a;

    return-void
.end method

.method public constructor <init>(Z[Lf/i/c$b;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lf/i/c$a;->a:Z

    .line 159
    iput-object p2, p0, Lf/i/c$a;->b:[Lf/i/c$b;

    .line 160
    return-void
.end method
